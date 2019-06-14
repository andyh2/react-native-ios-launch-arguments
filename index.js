import { NativeModules } from 'react-native';


const { RNAppLaunchArguments } = NativeModules;

const getLaunchArguments = () => (RNAppLaunchArguments.launchArguments || '').split('::');

export default getLaunchArguments;
