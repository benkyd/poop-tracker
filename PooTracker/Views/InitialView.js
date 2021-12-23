import React from 'react';

import { Image,  TouchableOpacity, Text, TextInput, View } from 'react-native';

import Logo from '../assets/icon.png'; 
import Styles from '../GlobalStyles.js';

import StartAppContents from './AppView';

export default function StartView() {
    // Is user logged in already?

    return (
        <View style={Styles.PageStyle}>
        <Image source={Logo} style={{ width: 305, height: 300 }} /> 
  
        <Text style={{color: '#888', fontSize: 18}}> 
          Have you ever wondered how much you poo?
        </Text>
        
        <SignUpView></SignUpView>
        </View>
    );
}

function SignUpView() {
    return (
        <View style={Styles.PageStyle}>
            <View style={Styles.inputView}>
                <TextInput
                style={Styles.TextInput}
                placeholder="Email."
                placeholderTextColor="#003f5c"
                onChangeText={(email) => setEmail(email)}
                />
            </View>

            <View style={Styles.inputView}>
                <TextInput
                style={Styles.TextInput}
                placeholder="Password."
                placeholderTextColor="#003f5c"
                secureTextEntry={true}
                onChangeText={(password) => setPassword(password)}
                />
            </View>

            <TouchableOpacity onPress={() => { React.setState( { active: StartAppContents }); }} style={Styles.button}>
                <Text style={Styles.buttonText}>Log a poo today!!</Text>
            </TouchableOpacity>
        </View>        
    );
}
