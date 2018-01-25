(function (global) {
  var UNDEFINED,
    exportObject;

  if (typeof module !== "undefined" && module.exports) {
    exportObject = exports;
  } else {
    exportObject = global.jasmineReporters = global.jasmineReporters || {};
  }

  function isFailed(obj) {
    return obj.status === "failed";
  }

  function isSkipped(obj) {
    return obj.status === "pending";
  }

  function isDisabled(obj) {
    return obj.status === "disabled";
  }

  exportObject.TeamCityReporter = function (options) {
    options = options || {};
    var self = this;

    if (options.modifySuiteName && typeof options.modifySuiteName !== 'function') {
      throw new Error('option "modifySuiteName" must be a function');
    }

    var delegates = {};
    delegates.modifySuiteName = options.modifySuiteName;


    self.jasmineStarted = function (suiteInfo) {
      console.log('##teamcity[testSuiteStarted name=\'Jasmine Tests\']');
    };

    self.suiteStarted = function (suite) {
      console.log('##teamcity[testSuiteStarted name=\'' + suite.fullName + '\']');
    };

    self.specStarted = function (spec) {
      console.log('##teamcity[testStarted name=\'' + spec.fullName + '\']');
    };

    self.specDone = function (spec) {
      if (isSkipped(spec) || isDisabled(spec)) {
        console.log('##teamcity[testIgnored name=\'' + spec.fullName + '\']');
      }

      if (isFailed(spec) && spec.failedExpectations.length) {
        var failure = spec.failedExpectations[0];

        console.log('##teamcity[testFailed name=\'' + spec.fullName +
            '\' message=\' ' + failure.message +
            '\' details=\'' + failure.stack) +
          '\']';
      }

      console.log('##teamcity[testFinished name=\'' + spec.fullName + '\']');
    };

    self.suiteDone = function (result) {
      console.log('##teamcity[testSuiteFinished name=\'' + result.fullName + '\']');
    };

    self.jasmineDone = function () {
      console.log('##teamcity[testSuiteFinished name=\'Jasmine Tests\']');
    };
  }
})(this);