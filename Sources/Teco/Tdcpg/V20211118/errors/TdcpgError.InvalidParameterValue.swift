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

extension TCTdcpgError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case accountNotFound = "InvalidParameterValue.AccountNotFound"
            case backupDataPointInvalid = "InvalidParameterValue.BackupDataPointInvalid"
            case clusterNotFound = "InvalidParameterValue.ClusterNotFound"
            case databaseVersionParamCountError = "InvalidParameterValue.DatabaseVersionParamCountError"
            case dealNameNotFound = "InvalidParameterValue.DealNameNotFound"
            case endpointNotFound = "InvalidParameterValue.EndpointNotFound"
            case illegalInstanceName = "InvalidParameterValue.IllegalInstanceName"
            case illegalPassword = "InvalidParameterValue.IllegalPassword"
            case instanceNotFound = "InvalidParameterValue.InstanceNotFound"
            case invalidDBVersion = "InvalidParameterValue.InvalidDBVersion"
            case invalidDatabaseVersion = "InvalidParameterValue.InvalidDatabaseVersion"
            case invalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
            case invalidSpec = "InvalidParameterValue.InvalidSpec"
            case parameterOutRangeError = "InvalidParameterValue.ParameterOutRangeError"
            case regionZoneUnavailable = "InvalidParameterValue.RegionZoneUnavailable"
            case sourceBackupClusterIdInvalid = "InvalidParameterValue.SourceBackupClusterIdInvalid"
            case storagePoolNotFound = "InvalidParameterValue.StoragePoolNotFound"
            case vpcDeniedError = "InvalidParameterValue.VpcDeniedError"
            case vpcNotFound = "InvalidParameterValue.VpcNotFound"
            case vpcSubnetIpLack = "InvalidParameterValue.VpcSubnetIpLack"
            case other = "InvalidParameterValue"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 账号不存在。
        public static var accountNotFound: InvalidParameterValue {
            InvalidParameterValue(.accountNotFound)
        }
        
        /// 未找到可回档的时间,请确认指定时间点是否在(创建集群时间点,当前时间点)之间。
        public static var backupDataPointInvalid: InvalidParameterValue {
            InvalidParameterValue(.backupDataPointInvalid)
        }
        
        /// 集群不存在。
        public static var clusterNotFound: InvalidParameterValue {
            InvalidParameterValue(.clusterNotFound)
        }
        
        /// DBMajorVersion、DBVersion、DBKernelVersion三个参数只能选择一个传递，且必须传递一个。
        public static var databaseVersionParamCountError: InvalidParameterValue {
            InvalidParameterValue(.databaseVersionParamCountError)
        }
        
        /// 订单未找到。
        public static var dealNameNotFound: InvalidParameterValue {
            InvalidParameterValue(.dealNameNotFound)
        }
        
        /// 接入点不存在。
        public static var endpointNotFound: InvalidParameterValue {
            InvalidParameterValue(.endpointNotFound)
        }
        
        /// 集群/实例名字非法，需要满足：长度在1-60个字符，只能由中文、字母、数字、'-'或'.'或'_'组成，区分大小写。
        public static var illegalInstanceName: InvalidParameterValue {
            InvalidParameterValue(.illegalInstanceName)
        }
        
        /// 密码设置无效，需要满足： 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&amp;*_-+=`|(){}[]:;'&lt;&gt;,.?/中的任意三种
        public static var illegalPassword: InvalidParameterValue {
            InvalidParameterValue(.illegalPassword)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: InvalidParameterValue {
            InvalidParameterValue(.instanceNotFound)
        }
        
        /// 数据库版本信息无法被识别。
        public static var invalidDBVersion: InvalidParameterValue {
            InvalidParameterValue(.invalidDBVersion)
        }
        
        /// 请检查DBMajorVersion、DBVersion、DBKernelVersion参数值是否合法。
        public static var invalidDatabaseVersion: InvalidParameterValue {
            InvalidParameterValue(.invalidDatabaseVersion)
        }
        
        /// 传入的参数非法。
        public static var invalidParameterValueError: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValueError)
        }
        
        /// 规格信息(CPU/Memory)信息无法被识别。
        public static var invalidSpec: InvalidParameterValue {
            InvalidParameterValue(.invalidSpec)
        }
        
        /// 参数不合法。
        public static var parameterOutRangeError: InvalidParameterValue {
            InvalidParameterValue(.parameterOutRangeError)
        }
        
        /// 不支持当前地域/可用区的售卖。
        public static var regionZoneUnavailable: InvalidParameterValue {
            InvalidParameterValue(.regionZoneUnavailable)
        }
        
        /// 使用的备份数据来源集群ID非法。
        public static var sourceBackupClusterIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.sourceBackupClusterIdInvalid)
        }
        
        /// 集群对应的存储已经被删除。
        public static var storagePoolNotFound: InvalidParameterValue {
            InvalidParameterValue(.storagePoolNotFound)
        }
        
        /// 您没有权限操作该VPC网络。
        public static var vpcDeniedError: InvalidParameterValue {
            InvalidParameterValue(.vpcDeniedError)
        }
        
        /// 未获取到VPC信息，请检查输入的VPC相关参数。
        public static var vpcNotFound: InvalidParameterValue {
            InvalidParameterValue(.vpcNotFound)
        }
        
        /// VPC子网中IP数量不够。
        public static var vpcSubnetIpLack: InvalidParameterValue {
            InvalidParameterValue(.vpcSubnetIpLack)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCTdcpgError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCTdcpgError.InvalidParameterValue, rhs: TCTdcpgError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTdcpgError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTdcpgError.InvalidParameterValue {
    /// - Returns: ``TCTdcpgError`` that holds the same error and context.
    public func toTdcpgError() -> TCTdcpgError {
        guard let code = TCTdcpgError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTdcpgError(code, context: self.context)
    }
}

extension TCTdcpgError.InvalidParameterValue {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
