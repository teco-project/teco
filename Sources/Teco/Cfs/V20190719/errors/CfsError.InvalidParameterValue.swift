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

extension TCCfsError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case clientTokenLimitExceeded = "InvalidParameterValue.ClientTokenLimitExceeded"
            case duplicatedPgroupName = "InvalidParameterValue.DuplicatedPgroupName"
            case duplicatedRuleAuthClientIp = "InvalidParameterValue.DuplicatedRuleAuthClientIp"
            case fsNameLimitExceeded = "InvalidParameterValue.FsNameLimitExceeded"
            case fsSizeLimitExceeded = "InvalidParameterValue.FsSizeLimitExceeded"
            case invalidAuthClientIp = "InvalidParameterValue.InvalidAuthClientIp"
            case invalidClientToken = "InvalidParameterValue.InvalidClientToken"
            case invalidEncrypted = "InvalidParameterValue.InvalidEncrypted"
            case invalidFileSystemId = "InvalidParameterValue.InvalidFileSystemId"
            case invalidFsName = "InvalidParameterValue.InvalidFsName"
            case invalidFsSizeLimit = "InvalidParameterValue.InvalidFsSizeLimit"
            case invalidFsStatus = "InvalidParameterValue.InvalidFsStatus"
            case invalidMountTargetIp = "InvalidParameterValue.InvalidMountTargetIp"
            case invalidNetInterface = "InvalidParameterValue.InvalidNetInterface"
            case invalidPgroup = "InvalidParameterValue.InvalidPgroup"
            case invalidPgroupId = "InvalidParameterValue.InvalidPgroupId"
            case invalidPgroupName = "InvalidParameterValue.InvalidPgroupName"
            case invalidPriority = "InvalidParameterValue.InvalidPriority"
            case invalidProtocol = "InvalidParameterValue.InvalidProtocol"
            case invalidRegionZoneInfo = "InvalidParameterValue.InvalidRegionZoneInfo"
            case invalidResourceTags = "InvalidParameterValue.InvalidResourceTags"
            case invalidRwPermission = "InvalidParameterValue.InvalidRwPermission"
            case invalidSnapshotStatus = "InvalidParameterValue.InvalidSnapshotStatus"
            case invalidStorageResourcePkg = "InvalidParameterValue.InvalidStorageResourcePkg"
            case invalidStorageType = "InvalidParameterValue.InvalidStorageType"
            case invalidSubnetId = "InvalidParameterValue.InvalidSubnetId"
            case invalidTagKey = "InvalidParameterValue.InvalidTagKey"
            case invalidTagValue = "InvalidParameterValue.InvalidTagValue"
            case invalidTurboCapacity = "InvalidParameterValue.InvalidTurboCapacity"
            case invalidUserPermission = "InvalidParameterValue.InvalidUserPermission"
            case invalidVip = "InvalidParameterValue.InvalidVip"
            case invalidVpcId = "InvalidParameterValue.InvalidVpcId"
            case invalidVpcParameter = "InvalidParameterValue.InvalidVpcParameter"
            case invalidZoneId = "InvalidParameterValue.InvalidZoneId"
            case invalidZoneOrZoneId = "InvalidParameterValue.InvalidZoneOrZoneId"
            case missingFileSystemId = "InvalidParameterValue.MissingFileSystemId"
            case missingFileSystemIdOrRegion = "InvalidParameterValue.MissingFileSystemIdOrRegion"
            case missingFsParameter = "InvalidParameterValue.MissingFsParameter"
            case missingKmsKeyId = "InvalidParameterValue.MissingKmsKeyId"
            case missingNameOrDescinfo = "InvalidParameterValue.MissingNameOrDescinfo"
            case missingPgroupName = "InvalidParameterValue.MissingPgroupName"
            case missingStorageResourcePkg = "InvalidParameterValue.MissingStorageResourcePkg"
            case missingSubnetidOrUnsubnetid = "InvalidParameterValue.MissingSubnetidOrUnsubnetid"
            case missingVpcParameter = "InvalidParameterValue.MissingVpcParameter"
            case missingVpcidOrUnvpcid = "InvalidParameterValue.MissingVpcidOrUnvpcid"
            case missingZoneId = "InvalidParameterValue.MissingZoneId"
            case missingZoneOrZoneId = "InvalidParameterValue.MissingZoneOrZoneId"
            case pgroupDescinfoLimitExceeded = "InvalidParameterValue.PgroupDescinfoLimitExceeded"
            case pgroupNameLimitExceeded = "InvalidParameterValue.PgroupNameLimitExceeded"
            case quotaCapLimitError = "InvalidParameterValue.QuotaCapLimitError"
            case quotaFileLimitError = "InvalidParameterValue.QuotaFileLimitError"
            case quotaUserIdError = "InvalidParameterValue.QuotaUserIdError"
            case quotaUserTypeError = "InvalidParameterValue.QuotaUserTypeError"
            case ruleNotMatchPgroup = "InvalidParameterValue.RuleNotMatchPgroup"
            case tagKeyFilterLimitExceeded = "InvalidParameterValue.TagKeyFilterLimitExceeded"
            case tagKeyLimitExceeded = "InvalidParameterValue.TagKeyLimitExceeded"
            case tagValueLimitExceeded = "InvalidParameterValue.TagValueLimitExceeded"
            case unavailableRegion = "InvalidParameterValue.UnavailableRegion"
            case unavailableZone = "InvalidParameterValue.UnavailableZone"
            case zoneIdRegionNotMatch = "InvalidParameterValue.ZoneIdRegionNotMatch"
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
        
        /// 用于保证请求幂等性的字符串长度超过限制（不能超过64字节）。
        public static var clientTokenLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.clientTokenLimitExceeded)
        }
        
        /// 权限组名称重复。
        public static var duplicatedPgroupName: InvalidParameterValue {
            InvalidParameterValue(.duplicatedPgroupName)
        }
        
        /// 规则IP重复。
        public static var duplicatedRuleAuthClientIp: InvalidParameterValue {
            InvalidParameterValue(.duplicatedRuleAuthClientIp)
        }
        
        /// 用户自定义名称过长（超过64字节)。
        public static var fsNameLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.fsNameLimitExceeded)
        }
        
        /// 文件系统配额设置超出上限。
        public static var fsSizeLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.fsSizeLimitExceeded)
        }
        
        /// 规则IP错误。
        public static var invalidAuthClientIp: InvalidParameterValue {
            InvalidParameterValue(.invalidAuthClientIp)
        }
        
        /// 用于保证请求幂等性的字符串错误。
        public static var invalidClientToken: InvalidParameterValue {
            InvalidParameterValue(.invalidClientToken)
        }
        
        /// 加密参数错误。
        public static var invalidEncrypted: InvalidParameterValue {
            InvalidParameterValue(.invalidEncrypted)
        }
        
        /// FileSystemId无效。
        public static var invalidFileSystemId: InvalidParameterValue {
            InvalidParameterValue(.invalidFileSystemId)
        }
        
        /// 无效的自定义名称。
        public static var invalidFsName: InvalidParameterValue {
            InvalidParameterValue(.invalidFsName)
        }
        
        /// 无效的文件系统配额。
        public static var invalidFsSizeLimit: InvalidParameterValue {
            InvalidParameterValue(.invalidFsSizeLimit)
        }
        
        /// 无效的文件系统状态。
        public static var invalidFsStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidFsStatus)
        }
        
        /// 错误的挂载点IP。
        public static var invalidMountTargetIp: InvalidParameterValue {
            InvalidParameterValue(.invalidMountTargetIp)
        }
        
        /// 无效的网络类型。
        public static var invalidNetInterface: InvalidParameterValue {
            InvalidParameterValue(.invalidNetInterface)
        }
        
        /// 权限组不属于该用户。
        public static var invalidPgroup: InvalidParameterValue {
            InvalidParameterValue(.invalidPgroup)
        }
        
        /// 权限组ID无效。
        public static var invalidPgroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidPgroupId)
        }
        
        /// 无效的权限组名称。
        public static var invalidPgroupName: InvalidParameterValue {
            InvalidParameterValue(.invalidPgroupName)
        }
        
        /// 优先级设置错误。
        public static var invalidPriority: InvalidParameterValue {
            InvalidParameterValue(.invalidPriority)
        }
        
        /// 协议参数错误。
        public static var invalidProtocol: InvalidParameterValue {
            InvalidParameterValue(.invalidProtocol)
        }
        
        /// 用户区域选择错误 (ZoneName) 或 (ZoneId, Region)二者必选一。
        public static var invalidRegionZoneInfo: InvalidParameterValue {
            InvalidParameterValue(.invalidRegionZoneInfo)
        }
        
        /// 参数值错误: 资源标签值错误。
        public static var invalidResourceTags: InvalidParameterValue {
            InvalidParameterValue(.invalidResourceTags)
        }
        
        /// 读写权限设置错误。
        public static var invalidRwPermission: InvalidParameterValue {
            InvalidParameterValue(.invalidRwPermission)
        }
        
        /// 无效的快照状态。
        ///
        /// 检测快照状态
        public static var invalidSnapshotStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshotStatus)
        }
        
        /// 资源包不存在或已绑定。
        public static var invalidStorageResourcePkg: InvalidParameterValue {
            InvalidParameterValue(.invalidStorageResourcePkg)
        }
        
        /// 存储类型参数错误。
        public static var invalidStorageType: InvalidParameterValue {
            InvalidParameterValue(.invalidStorageType)
        }
        
        /// 无效的子网ID。
        public static var invalidSubnetId: InvalidParameterValue {
            InvalidParameterValue(.invalidSubnetId)
        }
        
        /// 标签键不能为空。
        public static var invalidTagKey: InvalidParameterValue {
            InvalidParameterValue(.invalidTagKey)
        }
        
        public static var invalidTagValue: InvalidParameterValue {
            InvalidParameterValue(.invalidTagValue)
        }
        
        public static var invalidTurboCapacity: InvalidParameterValue {
            InvalidParameterValue(.invalidTurboCapacity)
        }
        
        /// 用户权限设置错误。
        public static var invalidUserPermission: InvalidParameterValue {
            InvalidParameterValue(.invalidUserPermission)
        }
        
        /// 用户指定不可用的vip。
        public static var invalidVip: InvalidParameterValue {
            InvalidParameterValue(.invalidVip)
        }
        
        /// 无效的VPCID。
        public static var invalidVpcId: InvalidParameterValue {
            InvalidParameterValue(.invalidVpcId)
        }
        
        /// VPC参数错误。
        public static var invalidVpcParameter: InvalidParameterValue {
            InvalidParameterValue(.invalidVpcParameter)
        }
        
        /// 无效的可用区。
        public static var invalidZoneId: InvalidParameterValue {
            InvalidParameterValue(.invalidZoneId)
        }
        
        /// 无效的可用区或可用区ID。
        public static var invalidZoneOrZoneId: InvalidParameterValue {
            InvalidParameterValue(.invalidZoneOrZoneId)
        }
        
        /// FileSystemId缺失。
        public static var missingFileSystemId: InvalidParameterValue {
            InvalidParameterValue(.missingFileSystemId)
        }
        
        /// 用户参数选择错误 (FileSystemId) 或 (Region)二者必选一。
        public static var missingFileSystemIdOrRegion: InvalidParameterValue {
            InvalidParameterValue(.missingFileSystemIdOrRegion)
        }
        
        /// FileSystem参数缺失。
        public static var missingFsParameter: InvalidParameterValue {
            InvalidParameterValue(.missingFsParameter)
        }
        
        /// 密钥ID或ARN参数缺失。
        public static var missingKmsKeyId: InvalidParameterValue {
            InvalidParameterValue(.missingKmsKeyId)
        }
        
        /// 权限组名称和描述不能同时为空。
        public static var missingNameOrDescinfo: InvalidParameterValue {
            InvalidParameterValue(.missingNameOrDescinfo)
        }
        
        /// 权限组名称不能为空。
        public static var missingPgroupName: InvalidParameterValue {
            InvalidParameterValue(.missingPgroupName)
        }
        
        /// 未绑定存储包。
        public static var missingStorageResourcePkg: InvalidParameterValue {
            InvalidParameterValue(.missingStorageResourcePkg)
        }
        
        /// SUBNETID和UNSUBNETID不能同时为空。
        public static var missingSubnetidOrUnsubnetid: InvalidParameterValue {
            InvalidParameterValue(.missingSubnetidOrUnsubnetid)
        }
        
        /// VPC相关参数缺失。
        public static var missingVpcParameter: InvalidParameterValue {
            InvalidParameterValue(.missingVpcParameter)
        }
        
        /// VPCID和UNVPCID不能同时为空。
        public static var missingVpcidOrUnvpcid: InvalidParameterValue {
            InvalidParameterValue(.missingVpcidOrUnvpcid)
        }
        
        /// ZoneID缺失。
        public static var missingZoneId: InvalidParameterValue {
            InvalidParameterValue(.missingZoneId)
        }
        
        /// 用户区域选择错误 (Zone) 或 (Zone_id)二者必选一。
        public static var missingZoneOrZoneId: InvalidParameterValue {
            InvalidParameterValue(.missingZoneOrZoneId)
        }
        
        /// 权限组描述长度超过限制（不能超过255字节）。
        public static var pgroupDescinfoLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.pgroupDescinfoLimitExceeded)
        }
        
        /// 权限组名称长度超过限制（不能超过64字节）。
        public static var pgroupNameLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.pgroupNameLimitExceeded)
        }
        
        public static var quotaCapLimitError: InvalidParameterValue {
            InvalidParameterValue(.quotaCapLimitError)
        }
        
        public static var quotaFileLimitError: InvalidParameterValue {
            InvalidParameterValue(.quotaFileLimitError)
        }
        
        public static var quotaUserIdError: InvalidParameterValue {
            InvalidParameterValue(.quotaUserIdError)
        }
        
        public static var quotaUserTypeError: InvalidParameterValue {
            InvalidParameterValue(.quotaUserTypeError)
        }
        
        /// 权限组规则和权限组不匹配。
        public static var ruleNotMatchPgroup: InvalidParameterValue {
            InvalidParameterValue(.ruleNotMatchPgroup)
        }
        
        /// 参数值错误: 标签键个数超过上限（6个）。
        public static var tagKeyFilterLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagKeyFilterLimitExceeded)
        }
        
        /// 标签键长度超过限制（不能超过127字节）。
        public static var tagKeyLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagKeyLimitExceeded)
        }
        
        /// 标签值长度超过限制（不能超过255字节）。
        public static var tagValueLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagValueLimitExceeded)
        }
        
        /// 该可用区无法提供服务。
        public static var unavailableRegion: InvalidParameterValue {
            InvalidParameterValue(.unavailableRegion)
        }
        
        /// 该地域无法提供服务。
        public static var unavailableZone: InvalidParameterValue {
            InvalidParameterValue(.unavailableZone)
        }
        
        /// ZoneId和Region不匹配。
        public static var zoneIdRegionNotMatch: InvalidParameterValue {
            InvalidParameterValue(.zoneIdRegionNotMatch)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCCfsError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCCfsError.InvalidParameterValue, rhs: TCCfsError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCfsError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCfsError.InvalidParameterValue {
    /// - Returns: ``TCCfsError`` that holds the same error and context.
    public func toCfsError() -> TCCfsError {
        guard let code = TCCfsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCfsError(code, context: self.context)
    }
}

extension TCCfsError.InvalidParameterValue {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
