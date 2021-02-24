import 'package:flutter/material.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => new _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  int _currentStep = 0;

  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('試合結果'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stepper(
                steps: _stepper(),
                type: stepperType,
                currentStep: this._currentStep,
                onStepTapped: (step) {
                  setState(() {
                    this._currentStep = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (this._currentStep < this._stepper().length - 1) {
                      this._currentStep = this._currentStep + 1;
                    } else {
                      print('complete');
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (this._currentStep > 0) {
                      this._currentStep = this._currentStep - 1;
                    } else {
                      this._currentStep = 0;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: Text('試合結果１'),
          content: Column(
            children: <Widget>[
            ],
          ),
          isActive: _currentStep >= 0,
          state: StepState.disabled),
      Step(
          title: Text('試合結果２'),
          content: Column(
            children: <Widget>[
            ],
          ),
          isActive: _currentStep >= 1,
          state: StepState.disabled),
      Step(
          title: Text('試合結果３'),
          content: Column(
            children: <Widget>[
            ],
          ),
          isActive: _currentStep >= 2,
          state: StepState.disabled),
      Step(
          title: Text('試合結果４'),
          content: Column(
            children: <Widget>[
            ],
          ),
          isActive: _currentStep >= 3,
          state: StepState.disabled),
      Step(
          title: Text('試合結果５'),
          content: Column(
            children: <Widget>[
            ],
          ),
          isActive: _currentStep >= 4,
          state: StepState.disabled),
    ];
    return _steps;
  }
}