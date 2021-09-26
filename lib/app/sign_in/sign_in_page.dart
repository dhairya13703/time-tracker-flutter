import 'package:flutter/material.dart';
import '/common_widgets/custom_eleveted_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContext(),
      backgroundColor: Colors.grey[100],
    );
  }

  // Auth methods
  void _signInWithGoogle() {
    // TODO: Auth with Google
  }

  Widget _buildContext() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: _signInWithGoogle,
            child: Text('Sign in with Google'),
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Background color
              // onPrimary: Colors.black, // Foreground color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          SizedBox(height: 8.0),

          //! Custom buuton
          CustomElevatedButton(
            child: Text('Sign in with Facebook'),
            color: Colors.red,
            borderRadius: 5.0,
            onPressed: _signInWithGoogle,
          ),
        ],
      ),
    );
  }
}
