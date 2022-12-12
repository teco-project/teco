//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIotvideoError {
    public struct ResourceNotFound: TCIotvideoErrorType {
        enum Code: String {
            case deviceFirmwareTaskNotExist = "ResourceNotFound.DeviceFirmwareTaskNotExist"
            case deviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
            case firmwareNotExist = "ResourceNotFound.FirmwareNotExist"
            case firmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 设备固件升级任务不存在。
        public static var deviceFirmwareTaskNotExist: ResourceNotFound {
            ResourceNotFound(.deviceFirmwareTaskNotExist)
        }
        
        /// 设备无固件版本。
        public static var deviceHasNoFirmware: ResourceNotFound {
            ResourceNotFound(.deviceHasNoFirmware)
        }
        
        /// 固件不存在。
        public static var firmwareNotExist: ResourceNotFound {
            ResourceNotFound(.firmwareNotExist)
        }
        
        /// 固件升级任务不存在。
        public static var firmwareTaskNotExist: ResourceNotFound {
            ResourceNotFound(.firmwareTaskNotExist)
        }
        
        public func asIotvideoError() -> TCIotvideoError {
            let code: TCIotvideoError.Code
            switch self.error {
            case .deviceFirmwareTaskNotExist: 
                code = .resourceNotFound_DeviceFirmwareTaskNotExist
            case .deviceHasNoFirmware: 
                code = .resourceNotFound_DeviceHasNoFirmware
            case .firmwareNotExist: 
                code = .resourceNotFound_FirmwareNotExist
            case .firmwareTaskNotExist: 
                code = .resourceNotFound_FirmwareTaskNotExist
            }
            return TCIotvideoError(code, context: self.context)
        }
    }
}
