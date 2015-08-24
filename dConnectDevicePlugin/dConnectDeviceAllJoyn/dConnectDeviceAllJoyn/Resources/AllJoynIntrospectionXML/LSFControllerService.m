/*------------------------------------------------------------------------------
* This is an autogenerated or copied file which AllSeen Alliance,
* as author hereby dedicates to the public domain.  Additionally, THIS
* SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND ANY CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
* AND OF GOOD TITLE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
* PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
* OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
* WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
* OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
* ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*------------------------------------------------------------------------------*/
////////////////////////////////////////////////////////////////////////////////
//
//  ALLJOYN MODELING TOOL - GENERATED CODE
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
//  LSFControllerService.m
//
////////////////////////////////////////////////////////////////////////////////

#import "LSFControllerService.h"

////////////////////////////////////////////////////////////////////////////////
//
//  Objective-C Bus Object implementation for LSFControllerServiceObject
//
////////////////////////////////////////////////////////////////////////////////

@implementation LSFControllerServiceObject

- (NSNumber*)lightingResetControllerService:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (NSNumber*)getControllerServiceVersion:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getAllLampIDsWithResponseCode:(NSNumber**)responseCode lampIDs:(AJNMessageArgument**)lampIDs message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampSupportedLangueagesWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID supportedLanguages:(AJNMessageArgument**)supportedLanguages message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampManufacturerWithLampID:(NSString*)lampID language:(NSString*)language responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID language:(NSString**)language manufacturer:(NSString**)manufacturer message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampNameWithLampID:(NSString*)lampID language:(NSString*)language responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID language:(NSString**)language lampName:(NSString**)lampName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)setLampNameWithLampID:(NSString*)lampID lampName:(NSString*)lampName language:(NSString*)language responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID language:(NSString**)language message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampDetailsWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampDetails:(AJNMessageArgument**)lampDetails message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampParametersWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampParameters:(AJNMessageArgument**)lampParameters message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampParametersFieldWithLampID:(NSString*)lampID parameterFieldName:(NSString*)lampParameterFieldName responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID parameterFieldName:(NSString**)lampParameterFieldName parameterFieldValue:(NSString**)lampParameterFieldValue message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampStateWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampState:(AJNMessageArgument**)lampState message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampStateFieldWithLampID:(NSString*)lampID stateFieldName:(NSString*)lampStateFieldName responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID stateFieldName:(NSString**)lampStateFieldName stateFieldValue:(NSString**)lampStateFieldValue message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampStateWithLampID:(NSString*)lampID lampState:(AJNMessageArgument*)lampState transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)pulseLampWithStateWithLampID:(NSString*)lampID fromState:(AJNMessageArgument*)fromLampState toState:(AJNMessageArgument*)toLampState period:(NSNumber*)period duration:(NSNumber*)duration numPulses:(NSNumber*)numPulses responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)pulseLampWithPresetWithLampID:(NSString*)lampID fromPresetID:(NSNumber*)fromPresetID toPresetID:(NSNumber*)toPresetID period:(NSNumber*)period duration:(NSNumber*)duration numPulses:(NSNumber*)numPulses responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampStateToPresetWithLampID:(NSString*)lampID presetID:(NSNumber*)presetID transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampStateFieldWithLampID:(NSString*)lampID stateFieldName:(NSString*)lampStateFieldName stateFieldValue:(NSString*)lampStateFieldValue transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampStateFieldName:(NSString**)lampStateFieldName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)resetLampStateWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)resetLampStateFieldWithLampID:(NSString*)lampID stateFieldName:(NSString*)lampStateFieldName responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID stateFieldName:(NSString**)lampStateFieldName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampFaultsWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampFaults:(AJNMessageArgument**)lampFaults message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)clearLampFaultsWithLampID:(NSString*)lampID lampFault:(NSNumber*)lampFault responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID lampFault:(NSNumber**)lampFault message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampServiceVersionWithLampID:(NSString*)lampIDresponseCode:(NSNumber**)responseCode lampID:(NSString**)lampID version:(NSNumber**)lampServiceVersion message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getAllLampGroupIDsWithResponseCode:(NSNumber**)responseCode lampGroupIDs:(AJNMessageArgument**)lampGroupIDs message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampGroupNameWithLampGroupID:(NSString*)lampGroupID language:(NSString*)language responseCode:(NSNumber**)responseCode lampIDGroupID:(NSString**)lampGroupID language:(NSString**)language lampGroupName:(NSString**)lampGroupName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)setLampGroupNameWithLampID:(NSString*)lampGroupID lampName:(NSString*)lampName language:(NSString*)language responseCode:(NSNumber**)responseCode lampID:(NSString**)lampID language:(NSString**)language message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)createLampGroupWithLampIDs:(AJNMessageArgument*)lampIDs lampGroupIDs:(AJNMessageArgument*)lampGroupIDs lampGroupName:(NSString*)lampGroupName language:(NSString*)language responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)updateLampGroupWithLampGroupID:(NSString*)lampGroupID lampIDs:(AJNMessageArgument*)lampIDs lampGroupIDs:(AJNMessageArgument*)lampGroupIDs responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)deleteLampGroupWithLampGroupID:(NSString*)lampGroupIDresponseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)getLampGroupWithLampGroupID:(NSString*)lampGroupIDresponseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID lampID:(AJNMessageArgument**)lampID lampGroupIDs:(AJNMessageArgument**)lampGroupIDs message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampGroupStateWithLampGroupID:(NSString*)lampGroupID lampState:(AJNMessageArgument*)lampState transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)pulseLampGroupWithStateWithLampGroupID:(NSString*)lampGroupID fromState:(AJNMessageArgument*)fromLampState toState:(AJNMessageArgument*)toLampState period:(NSNumber*)period duration:(NSNumber*)duration numPulses:(NSNumber*)numPulses responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)pulseLampGroupWithPresetWithLampGroupID:(NSString*)lampGroupID fromPresetID:(NSNumber*)fromPresetID toPresetID:(NSNumber*)toPresetID period:(NSNumber*)period duration:(NSNumber*)duration numPulses:(NSNumber*)numPulses responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampGroupStateToPresetWithLampGroupID:(NSString*)lampGroupID presetID:(NSNumber*)presetID transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)transitionLampGroupStateFieldWithLampGroupID:(NSString*)lampGroupID groupStateFieldName:(NSString*)lampGroupStateFieldName groupStateFieldValue:(NSString*)lampGroupStateFieldValue transitionPeriod:(NSNumber*)transitionPeriod responseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID groupStateFieldName:(NSString**)lampGroupStateFieldName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)resetLampGroupStateWithLampGroupID:(NSString*)lampGroupIDresponseCode:(NSNumber**)responseCode lampGroupID:(NSString**)lampGroupID message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}

- (void)resetLampGroupStateFieldWithLampGroupID:(NSString*)lampGroupID groupStateFieldName:(NSString*)lampGroupStateFieldName responseCode:(NSNumber**)responseCode lampID:(NSString**)lampGroupID groupStateFieldName:(NSString**)lampGroupStateFieldName message:(AJNMessage *)methodCallMessage
{
    // TODO: complete the implementation of this method
    //
     @throw([NSException exceptionWithName:@"NotImplementedException" reason:@"You must implement this method" userInfo:nil]);   
}


@end

////////////////////////////////////////////////////////////////////////////////
