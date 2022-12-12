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

extension TCLighthouseError {
    public struct InvalidParameterValue: TCLighthouseErrorType {
        enum Code: String {
            case blueprintConfigNotMatch = "InvalidParameterValue.BlueprintConfigNotMatch"
            case blueprintId = "InvalidParameterValue.BlueprintId"
            case blueprintIdMalformed = "InvalidParameterValue.BlueprintIdMalformed"
            case bundleAndBlueprintNotMatch = "InvalidParameterValue.BundleAndBlueprintNotMatch"
            case ccnIdMalformed = "InvalidParameterValue.CcnIdMalformed"
            case diskNameTooLong = "InvalidParameterValue.DiskNameTooLong"
            case diskSizeNotMatch = "InvalidParameterValue.DiskSizeNotMatch"
            case duplicateParameterValue = "InvalidParameterValue.DuplicateParameterValue"
            case duplicated = "InvalidParameterValue.Duplicated"
            case firewallRuleDescriptionTooLong = "InvalidParameterValue.FirewallRuleDescriptionTooLong"
            case instanceIdMalformed = "InvalidParameterValue.InstanceIdMalformed"
            case instanceNameTooLong = "InvalidParameterValue.InstanceNameTooLong"
            case invalidBlueprintId = "InvalidParameterValue.InvalidBlueprintId"
            case invalidBlueprintPlatformType = "InvalidParameterValue.InvalidBlueprintPlatformType"
            case invalidBlueprintState = "InvalidParameterValue.InvalidBlueprintState"
            case invalidBlueprintType = "InvalidParameterValue.InvalidBlueprintType"
            case invalidBundle = "InvalidParameterValue.InvalidBundle"
            case invalidConsoleDisplayTypes = "InvalidParameterValue.InvalidConsoleDisplayTypes"
            case invalidDiskIdMalformed = "InvalidParameterValue.InvalidDiskIdMalformed"
            case invalidInstanceLoginKeyPairPermitLogin = "InvalidParameterValue.InvalidInstanceLoginKeyPairPermitLogin"
            case invalidIpFormat = "InvalidParameterValue.InvalidIpFormat"
            case invalidKeyPairNameEmpty = "InvalidParameterValue.InvalidKeyPairNameEmpty"
            case invalidKeyPairNameIncludeIllegalChar = "InvalidParameterValue.InvalidKeyPairNameIncludeIllegalChar"
            case invalidKeyPairNameTooLong = "InvalidParameterValue.InvalidKeyPairNameTooLong"
            case invalidParameterCombination = "InvalidParameterValue.InvalidParameterCombination"
            case invalidPassword = "InvalidParameterValue.InvalidPassword"
            case invalidResourceQuotaResourceName = "InvalidParameterValue.InvalidResourceQuotaResourceName"
            case invalidZone = "InvalidParameterValue.InvalidZone"
            case keyPairIdMalformed = "InvalidParameterValue.KeyPairIdMalformed"
            case keyPairPublicKeyDuplicated = "InvalidParameterValue.KeyPairPublicKeyDuplicated"
            case keyPairPublicKeyMalformed = "InvalidParameterValue.KeyPairPublicKeyMalformed"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case negative = "InvalidParameterValue.Negative"
            case notAllowToChangePlatformType = "InvalidParameterValue.NotAllowToChangePlatformType"
            case outOfRange = "InvalidParameterValue.OutOfRange"
            case snapshotIdMalformed = "InvalidParameterValue.SnapshotIdMalformed"
            case snapshotNameTooLong = "InvalidParameterValue.SnapshotNameTooLong"
            case tooLong = "InvalidParameterValue.TooLong"
            case zoneInvalid = "InvalidParameterValue.ZoneInvalid"
            case other = "InvalidParameterValue"
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
        
        /// 该实例配置不符合指定镜像的要求。
        public static var blueprintConfigNotMatch: InvalidParameterValue {
            InvalidParameterValue(.blueprintConfigNotMatch)
        }
        
        /// 镜像 ID 不合法，重装实例不允许切换操作系统类型。
        public static var blueprintId: InvalidParameterValue {
            InvalidParameterValue(.blueprintId)
        }
        
        /// 参数值非法，镜像 ID 格式非法。
        public static var blueprintIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.blueprintIdMalformed)
        }
        
        /// 一般是套餐内存或者系统盘大小不满足镜像要求，请更换套餐或者镜像。
        public static var bundleAndBlueprintNotMatch: InvalidParameterValue {
            InvalidParameterValue(.bundleAndBlueprintNotMatch)
        }
        
        /// 云联网实例ID格式非法。
        public static var ccnIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.ccnIdMalformed)
        }
        
        /// 磁盘名称长度超出限制。
        public static var diskNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.diskNameTooLong)
        }
        
        /// 磁盘大小发生改变。
        public static var diskSizeNotMatch: InvalidParameterValue {
            InvalidParameterValue(.diskSizeNotMatch)
        }
        
        /// 参数 <code>KeyName</code> 已经存在且重复。
        public static var duplicateParameterValue: InvalidParameterValue {
            InvalidParameterValue(.duplicateParameterValue)
        }
        
        /// 参数值非法，不允许包含重复的值。
        public static var duplicated: InvalidParameterValue {
            InvalidParameterValue(.duplicated)
        }
        
        /// 防火墙规则描述长度超出限制。
        public static var firewallRuleDescriptionTooLong: InvalidParameterValue {
            InvalidParameterValue(.firewallRuleDescriptionTooLong)
        }
        
        /// 参数值非法，实例 ID 格式非法。
        public static var instanceIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.instanceIdMalformed)
        }
        
        /// 参数值非法，实例名称超过允许的最大长度。
        public static var instanceNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.instanceNameTooLong)
        }
        
        /// 镜像 ID 不合法。
        public static var invalidBlueprintId: InvalidParameterValue {
            InvalidParameterValue(.invalidBlueprintId)
        }
        
        /// 镜像操作系统类型不合法。
        public static var invalidBlueprintPlatformType: InvalidParameterValue {
            InvalidParameterValue(.invalidBlueprintPlatformType)
        }
        
        /// 镜像状态取值非法。
        public static var invalidBlueprintState: InvalidParameterValue {
            InvalidParameterValue(.invalidBlueprintState)
        }
        
        /// 镜像类型不合法。
        public static var invalidBlueprintType: InvalidParameterValue {
            InvalidParameterValue(.invalidBlueprintType)
        }
        
        /// 非法的套餐参数。
        ///
        /// 更换套餐。
        public static var invalidBundle: InvalidParameterValue {
            InvalidParameterValue(.invalidBundle)
        }
        
        /// 控制台显示类型不合法。
        public static var invalidConsoleDisplayTypes: InvalidParameterValue {
            InvalidParameterValue(.invalidConsoleDisplayTypes)
        }
        
        /// 参数值非法，磁盘 ID 格式非法。
        public static var invalidDiskIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.invalidDiskIdMalformed)
        }
        
        /// 设置是否使用默认密钥对登录的值不正确。
        public static var invalidInstanceLoginKeyPairPermitLogin: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceLoginKeyPairPermitLogin)
        }
        
        /// 参数值非法，IP 地址格式非法。
        public static var invalidIpFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidIpFormat)
        }
        
        /// 参数值非法。
        public static var invalidKeyPairNameEmpty: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyPairNameEmpty)
        }
        
        /// 非法的密钥对名称。
        public static var invalidKeyPairNameIncludeIllegalChar: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyPairNameIncludeIllegalChar)
        }
        
        /// 参数长度非法。
        public static var invalidKeyPairNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyPairNameTooLong)
        }
        
        /// 参数组合非法。
        public static var invalidParameterCombination: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterCombination)
        }
        
        /// 参数中的密码不合法。
        public static var invalidPassword: InvalidParameterValue {
            InvalidParameterValue(.invalidPassword)
        }
        
        /// 不正确的配额资源名称。
        public static var invalidResourceQuotaResourceName: InvalidParameterValue {
            InvalidParameterValue(.invalidResourceQuotaResourceName)
        }
        
        /// 参数Zone的取值不合法。
        public static var invalidZone: InvalidParameterValue {
            InvalidParameterValue(.invalidZone)
        }
        
        /// 参数值非法，密钥对 ID 格式非法。
        public static var keyPairIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.keyPairIdMalformed)
        }
        
        /// 该密钥对中的公钥在系统中已存在，无法重复使用 。
        public static var keyPairPublicKeyDuplicated: InvalidParameterValue {
            InvalidParameterValue(.keyPairPublicKeyDuplicated)
        }
        
        /// 指定的公钥格式错误。
        public static var keyPairPublicKeyMalformed: InvalidParameterValue {
            InvalidParameterValue(.keyPairPublicKeyMalformed)
        }
        
        /// 参数值非法，参数值的数量超过最大限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }
        
        /// 参数值非法，不能为负值。
        public static var negative: InvalidParameterValue {
            InvalidParameterValue(.negative)
        }
        
        /// 不允许改变平台类型。
        public static var notAllowToChangePlatformType: InvalidParameterValue {
            InvalidParameterValue(.notAllowToChangePlatformType)
        }
        
        /// 参数值非法，不在合法范围内。
        public static var outOfRange: InvalidParameterValue {
            InvalidParameterValue(.outOfRange)
        }
        
        /// 参数值非法，快照 ID 格式非法。
        public static var snapshotIdMalformed: InvalidParameterValue {
            InvalidParameterValue(.snapshotIdMalformed)
        }
        
        /// 参数值非法，快照名称超过允许的最大长度。
        public static var snapshotNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.snapshotNameTooLong)
        }
        
        /// 参数取值过长，超过最大长度。
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }
        
        /// 非法的可用区。
        public static var zoneInvalid: InvalidParameterValue {
            InvalidParameterValue(.zoneInvalid)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
        
        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .blueprintConfigNotMatch: 
                code = .invalidParameterValue_BlueprintConfigNotMatch
            case .blueprintId: 
                code = .invalidParameterValue_BlueprintId
            case .blueprintIdMalformed: 
                code = .invalidParameterValue_BlueprintIdMalformed
            case .bundleAndBlueprintNotMatch: 
                code = .invalidParameterValue_BundleAndBlueprintNotMatch
            case .ccnIdMalformed: 
                code = .invalidParameterValue_CcnIdMalformed
            case .diskNameTooLong: 
                code = .invalidParameterValue_DiskNameTooLong
            case .diskSizeNotMatch: 
                code = .invalidParameterValue_DiskSizeNotMatch
            case .duplicateParameterValue: 
                code = .invalidParameterValue_DuplicateParameterValue
            case .duplicated: 
                code = .invalidParameterValue_Duplicated
            case .firewallRuleDescriptionTooLong: 
                code = .invalidParameterValue_FirewallRuleDescriptionTooLong
            case .instanceIdMalformed: 
                code = .invalidParameterValue_InstanceIdMalformed
            case .instanceNameTooLong: 
                code = .invalidParameterValue_InstanceNameTooLong
            case .invalidBlueprintId: 
                code = .invalidParameterValue_InvalidBlueprintId
            case .invalidBlueprintPlatformType: 
                code = .invalidParameterValue_InvalidBlueprintPlatformType
            case .invalidBlueprintState: 
                code = .invalidParameterValue_InvalidBlueprintState
            case .invalidBlueprintType: 
                code = .invalidParameterValue_InvalidBlueprintType
            case .invalidBundle: 
                code = .invalidParameterValue_InvalidBundle
            case .invalidConsoleDisplayTypes: 
                code = .invalidParameterValue_InvalidConsoleDisplayTypes
            case .invalidDiskIdMalformed: 
                code = .invalidParameterValue_InvalidDiskIdMalformed
            case .invalidInstanceLoginKeyPairPermitLogin: 
                code = .invalidParameterValue_InvalidInstanceLoginKeyPairPermitLogin
            case .invalidIpFormat: 
                code = .invalidParameterValue_InvalidIpFormat
            case .invalidKeyPairNameEmpty: 
                code = .invalidParameterValue_InvalidKeyPairNameEmpty
            case .invalidKeyPairNameIncludeIllegalChar: 
                code = .invalidParameterValue_InvalidKeyPairNameIncludeIllegalChar
            case .invalidKeyPairNameTooLong: 
                code = .invalidParameterValue_InvalidKeyPairNameTooLong
            case .invalidParameterCombination: 
                code = .invalidParameterValue_InvalidParameterCombination
            case .invalidPassword: 
                code = .invalidParameterValue_InvalidPassword
            case .invalidResourceQuotaResourceName: 
                code = .invalidParameterValue_InvalidResourceQuotaResourceName
            case .invalidZone: 
                code = .invalidParameterValue_InvalidZone
            case .keyPairIdMalformed: 
                code = .invalidParameterValue_KeyPairIdMalformed
            case .keyPairPublicKeyDuplicated: 
                code = .invalidParameterValue_KeyPairPublicKeyDuplicated
            case .keyPairPublicKeyMalformed: 
                code = .invalidParameterValue_KeyPairPublicKeyMalformed
            case .limitExceeded: 
                code = .invalidParameterValue_LimitExceeded
            case .negative: 
                code = .invalidParameterValue_Negative
            case .notAllowToChangePlatformType: 
                code = .invalidParameterValue_NotAllowToChangePlatformType
            case .outOfRange: 
                code = .invalidParameterValue_OutOfRange
            case .snapshotIdMalformed: 
                code = .invalidParameterValue_SnapshotIdMalformed
            case .snapshotNameTooLong: 
                code = .invalidParameterValue_SnapshotNameTooLong
            case .tooLong: 
                code = .invalidParameterValue_TooLong
            case .zoneInvalid: 
                code = .invalidParameterValue_ZoneInvalid
            case .other: 
                code = .invalidParameterValue
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
