//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCCfsError {
    public struct InvalidParameterValue: TCCfsErrorType {
        enum Code: String {
            case autoPolicyNotFound = "InvalidParameterValue.AutoPolicyNotFound"
            case clientTokenLimitExceeded = "InvalidParameterValue.ClientTokenLimitExceeded"
            case duplicatedPgroupName = "InvalidParameterValue.DuplicatedPgroupName"
            case duplicatedRuleAuthClientIp = "InvalidParameterValue.DuplicatedRuleAuthClientIp"
            case duplicatedTagKey = "InvalidParameterValue.DuplicatedTagKey"
            case fsNameLimitExceeded = "InvalidParameterValue.FsNameLimitExceeded"
            case fsSizeLimitExceeded = "InvalidParameterValue.FsSizeLimitExceeded"
            case invalidAliveDays = "InvalidParameterValue.InvalidAliveDays"
            case invalidAuthClientIp = "InvalidParameterValue.InvalidAuthClientIp"
            case invalidAutoScaleUpParams = "InvalidParameterValue.InvalidAutoScaleUpParams"
            case invalidClientToken = "InvalidParameterValue.InvalidClientToken"
            case invalidDestinationRegions = "InvalidParameterValue.InvalidDestinationRegions"
            case invalidEncrypted = "InvalidParameterValue.InvalidEncrypted"
            case invalidFileSystemId = "InvalidParameterValue.InvalidFileSystemId"
            case invalidFsName = "InvalidParameterValue.InvalidFsName"
            case invalidFsSizeLimit = "InvalidParameterValue.InvalidFsSizeLimit"
            case invalidFsStatus = "InvalidParameterValue.InvalidFsStatus"
            case invalidMountTargetIp = "InvalidParameterValue.InvalidMountTargetIp"
            case invalidNetInterface = "InvalidParameterValue.InvalidNetInterface"
            case invalidParamDayOfMonth = "InvalidParameterValue.InvalidParamDayOfMonth"
            case invalidParamDayOfWeek = "InvalidParameterValue.InvalidParamDayOfWeek"
            case invalidParamIntervalDays = "InvalidParameterValue.InvalidParamIntervalDays"
            case invalidPgroup = "InvalidParameterValue.InvalidPgroup"
            case invalidPgroupId = "InvalidParameterValue.InvalidPgroupId"
            case invalidPgroupName = "InvalidParameterValue.InvalidPgroupName"
            case invalidPriority = "InvalidParameterValue.InvalidPriority"
            case invalidProtocol = "InvalidParameterValue.InvalidProtocol"
            case invalidRegionZoneInfo = "InvalidParameterValue.InvalidRegionZoneInfo"
            case invalidResourceTags = "InvalidParameterValue.InvalidResourceTags"
            case invalidRwPermission = "InvalidParameterValue.InvalidRwPermission"
            case invalidScaleupTargetCapacity = "InvalidParameterValue.InvalidScaleupTargetCapacity"
            case invalidSnapPolicyStatus = "InvalidParameterValue.InvalidSnapPolicyStatus"
            case invalidSnapshotName = "InvalidParameterValue.InvalidSnapshotName"
            case invalidSnapshotPolicyName = "InvalidParameterValue.InvalidSnapshotPolicyName"
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
            case missingPolicyParam = "InvalidParameterValue.MissingPolicyParam"
            case missingSnapNameOrAliveDay = "InvalidParameterValue.MissingSnapNameOrAliveDay"
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
            case snapshotNameLimitExceeded = "InvalidParameterValue.SnapshotNameLimitExceeded"
            case snapshotPolicyNameLimitExceeded = "InvalidParameterValue.SnapshotPolicyNameLimitExceeded"
            case tagKeyFilterLimitExceeded = "InvalidParameterValue.TagKeyFilterLimitExceeded"
            case tagKeyLimitExceeded = "InvalidParameterValue.TagKeyLimitExceeded"
            case tagValueFilterLimitExceeded = "InvalidParameterValue.TagValueFilterLimitExceeded"
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
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        public static var autoPolicyNotFound: InvalidParameterValue {
            InvalidParameterValue(.autoPolicyNotFound)
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

        public static var duplicatedTagKey: InvalidParameterValue {
            InvalidParameterValue(.duplicatedTagKey)
        }

        /// 用户自定义名称过长（超过64字节)。
        public static var fsNameLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.fsNameLimitExceeded)
        }

        /// 文件系统配额设置超出上限。
        public static var fsSizeLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.fsSizeLimitExceeded)
        }

        public static var invalidAliveDays: InvalidParameterValue {
            InvalidParameterValue(.invalidAliveDays)
        }

        /// 规则IP错误。
        public static var invalidAuthClientIp: InvalidParameterValue {
            InvalidParameterValue(.invalidAuthClientIp)
        }

        /// 扩容策略参数无效
        ///
        /// 检查参数值是否符合要求
        public static var invalidAutoScaleUpParams: InvalidParameterValue {
            InvalidParameterValue(.invalidAutoScaleUpParams)
        }

        /// 用于保证请求幂等性的字符串错误。
        public static var invalidClientToken: InvalidParameterValue {
            InvalidParameterValue(.invalidClientToken)
        }

        /// 查询已支持的快照地域
        public static var invalidDestinationRegions: InvalidParameterValue {
            InvalidParameterValue(.invalidDestinationRegions)
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

        /// DayOfMonth 参数错误
        ///
        /// 该参数是字符串类型
        public static var invalidParamDayOfMonth: InvalidParameterValue {
            InvalidParameterValue(.invalidParamDayOfMonth)
        }

        public static var invalidParamDayOfWeek: InvalidParameterValue {
            InvalidParameterValue(.invalidParamDayOfWeek)
        }

        /// IntervalDays 参数值错误
        ///
        /// 该值范围是1-365
        public static var invalidParamIntervalDays: InvalidParameterValue {
            InvalidParameterValue(.invalidParamIntervalDays)
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

        /// 扩容目标容量参数错误
        ///
        /// 按照参数说明填写正确参数
        public static var invalidScaleupTargetCapacity: InvalidParameterValue {
            InvalidParameterValue(.invalidScaleupTargetCapacity)
        }

        public static var invalidSnapPolicyStatus: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapPolicyStatus)
        }

        public static var invalidSnapshotName: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshotName)
        }

        public static var invalidSnapshotPolicyName: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshotPolicyName)
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

        /// 标签值为空或字符无效。
        public static var invalidTagValue: InvalidParameterValue {
            InvalidParameterValue(.invalidTagValue)
        }

        /// 无效的容量值。
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

        /// 缺少快照策略参数
        ///
        /// 添加IsActivated，PolicyName，DayOfWeek，
        /// Hour，AliveDays，DayOfMonth，IntervalDays 中的一个或者多个参数
        public static var missingPolicyParam: InvalidParameterValue {
            InvalidParameterValue(.missingPolicyParam)
        }

        public static var missingSnapNameOrAliveDay: InvalidParameterValue {
            InvalidParameterValue(.missingSnapNameOrAliveDay)
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

        /// 容量硬限制取值范围错误。
        public static var quotaCapLimitError: InvalidParameterValue {
            InvalidParameterValue(.quotaCapLimitError)
        }

        /// 文件硬限制取值范围错误。
        public static var quotaFileLimitError: InvalidParameterValue {
            InvalidParameterValue(.quotaFileLimitError)
        }

        /// USER ID类型错误。
        public static var quotaUserIdError: InvalidParameterValue {
            InvalidParameterValue(.quotaUserIdError)
        }

        /// 配额类型错误。
        public static var quotaUserTypeError: InvalidParameterValue {
            InvalidParameterValue(.quotaUserTypeError)
        }

        /// 权限组规则和权限组不匹配。
        public static var ruleNotMatchPgroup: InvalidParameterValue {
            InvalidParameterValue(.ruleNotMatchPgroup)
        }

        public static var snapshotNameLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.snapshotNameLimitExceeded)
        }

        /// 快照策略名称小于64位字符串
        public static var snapshotPolicyNameLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.snapshotPolicyNameLimitExceeded)
        }

        /// 参数值错误: 标签键个数超过上限（6个）。
        public static var tagKeyFilterLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagKeyFilterLimitExceeded)
        }

        /// 标签键长度超过限制（不能超过127字节）。
        public static var tagKeyLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagKeyLimitExceeded)
        }

        /// 标签值个数超过上限（10个）。
        public static var tagValueFilterLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.tagValueFilterLimitExceeded)
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

        public func asCfsError() -> TCCfsError {
            let code: TCCfsError.Code
            switch self.error {
            case .autoPolicyNotFound:
                code = .invalidParameterValue_AutoPolicyNotFound
            case .clientTokenLimitExceeded:
                code = .invalidParameterValue_ClientTokenLimitExceeded
            case .duplicatedPgroupName:
                code = .invalidParameterValue_DuplicatedPgroupName
            case .duplicatedRuleAuthClientIp:
                code = .invalidParameterValue_DuplicatedRuleAuthClientIp
            case .duplicatedTagKey:
                code = .invalidParameterValue_DuplicatedTagKey
            case .fsNameLimitExceeded:
                code = .invalidParameterValue_FsNameLimitExceeded
            case .fsSizeLimitExceeded:
                code = .invalidParameterValue_FsSizeLimitExceeded
            case .invalidAliveDays:
                code = .invalidParameterValue_InvalidAliveDays
            case .invalidAuthClientIp:
                code = .invalidParameterValue_InvalidAuthClientIp
            case .invalidAutoScaleUpParams:
                code = .invalidParameterValue_InvalidAutoScaleUpParams
            case .invalidClientToken:
                code = .invalidParameterValue_InvalidClientToken
            case .invalidDestinationRegions:
                code = .invalidParameterValue_InvalidDestinationRegions
            case .invalidEncrypted:
                code = .invalidParameterValue_InvalidEncrypted
            case .invalidFileSystemId:
                code = .invalidParameterValue_InvalidFileSystemId
            case .invalidFsName:
                code = .invalidParameterValue_InvalidFsName
            case .invalidFsSizeLimit:
                code = .invalidParameterValue_InvalidFsSizeLimit
            case .invalidFsStatus:
                code = .invalidParameterValue_InvalidFsStatus
            case .invalidMountTargetIp:
                code = .invalidParameterValue_InvalidMountTargetIp
            case .invalidNetInterface:
                code = .invalidParameterValue_InvalidNetInterface
            case .invalidParamDayOfMonth:
                code = .invalidParameterValue_InvalidParamDayOfMonth
            case .invalidParamDayOfWeek:
                code = .invalidParameterValue_InvalidParamDayOfWeek
            case .invalidParamIntervalDays:
                code = .invalidParameterValue_InvalidParamIntervalDays
            case .invalidPgroup:
                code = .invalidParameterValue_InvalidPgroup
            case .invalidPgroupId:
                code = .invalidParameterValue_InvalidPgroupId
            case .invalidPgroupName:
                code = .invalidParameterValue_InvalidPgroupName
            case .invalidPriority:
                code = .invalidParameterValue_InvalidPriority
            case .invalidProtocol:
                code = .invalidParameterValue_InvalidProtocol
            case .invalidRegionZoneInfo:
                code = .invalidParameterValue_InvalidRegionZoneInfo
            case .invalidResourceTags:
                code = .invalidParameterValue_InvalidResourceTags
            case .invalidRwPermission:
                code = .invalidParameterValue_InvalidRwPermission
            case .invalidScaleupTargetCapacity:
                code = .invalidParameterValue_InvalidScaleupTargetCapacity
            case .invalidSnapPolicyStatus:
                code = .invalidParameterValue_InvalidSnapPolicyStatus
            case .invalidSnapshotName:
                code = .invalidParameterValue_InvalidSnapshotName
            case .invalidSnapshotPolicyName:
                code = .invalidParameterValue_InvalidSnapshotPolicyName
            case .invalidSnapshotStatus:
                code = .invalidParameterValue_InvalidSnapshotStatus
            case .invalidStorageResourcePkg:
                code = .invalidParameterValue_InvalidStorageResourcePkg
            case .invalidStorageType:
                code = .invalidParameterValue_InvalidStorageType
            case .invalidSubnetId:
                code = .invalidParameterValue_InvalidSubnetId
            case .invalidTagKey:
                code = .invalidParameterValue_InvalidTagKey
            case .invalidTagValue:
                code = .invalidParameterValue_InvalidTagValue
            case .invalidTurboCapacity:
                code = .invalidParameterValue_InvalidTurboCapacity
            case .invalidUserPermission:
                code = .invalidParameterValue_InvalidUserPermission
            case .invalidVip:
                code = .invalidParameterValue_InvalidVip
            case .invalidVpcId:
                code = .invalidParameterValue_InvalidVpcId
            case .invalidVpcParameter:
                code = .invalidParameterValue_InvalidVpcParameter
            case .invalidZoneId:
                code = .invalidParameterValue_InvalidZoneId
            case .invalidZoneOrZoneId:
                code = .invalidParameterValue_InvalidZoneOrZoneId
            case .missingFileSystemId:
                code = .invalidParameterValue_MissingFileSystemId
            case .missingFileSystemIdOrRegion:
                code = .invalidParameterValue_MissingFileSystemIdOrRegion
            case .missingFsParameter:
                code = .invalidParameterValue_MissingFsParameter
            case .missingKmsKeyId:
                code = .invalidParameterValue_MissingKmsKeyId
            case .missingNameOrDescinfo:
                code = .invalidParameterValue_MissingNameOrDescinfo
            case .missingPgroupName:
                code = .invalidParameterValue_MissingPgroupName
            case .missingPolicyParam:
                code = .invalidParameterValue_MissingPolicyParam
            case .missingSnapNameOrAliveDay:
                code = .invalidParameterValue_MissingSnapNameOrAliveDay
            case .missingStorageResourcePkg:
                code = .invalidParameterValue_MissingStorageResourcePkg
            case .missingSubnetidOrUnsubnetid:
                code = .invalidParameterValue_MissingSubnetidOrUnsubnetid
            case .missingVpcParameter:
                code = .invalidParameterValue_MissingVpcParameter
            case .missingVpcidOrUnvpcid:
                code = .invalidParameterValue_MissingVpcidOrUnvpcid
            case .missingZoneId:
                code = .invalidParameterValue_MissingZoneId
            case .missingZoneOrZoneId:
                code = .invalidParameterValue_MissingZoneOrZoneId
            case .pgroupDescinfoLimitExceeded:
                code = .invalidParameterValue_PgroupDescinfoLimitExceeded
            case .pgroupNameLimitExceeded:
                code = .invalidParameterValue_PgroupNameLimitExceeded
            case .quotaCapLimitError:
                code = .invalidParameterValue_QuotaCapLimitError
            case .quotaFileLimitError:
                code = .invalidParameterValue_QuotaFileLimitError
            case .quotaUserIdError:
                code = .invalidParameterValue_QuotaUserIdError
            case .quotaUserTypeError:
                code = .invalidParameterValue_QuotaUserTypeError
            case .ruleNotMatchPgroup:
                code = .invalidParameterValue_RuleNotMatchPgroup
            case .snapshotNameLimitExceeded:
                code = .invalidParameterValue_SnapshotNameLimitExceeded
            case .snapshotPolicyNameLimitExceeded:
                code = .invalidParameterValue_SnapshotPolicyNameLimitExceeded
            case .tagKeyFilterLimitExceeded:
                code = .invalidParameterValue_TagKeyFilterLimitExceeded
            case .tagKeyLimitExceeded:
                code = .invalidParameterValue_TagKeyLimitExceeded
            case .tagValueFilterLimitExceeded:
                code = .invalidParameterValue_TagValueFilterLimitExceeded
            case .tagValueLimitExceeded:
                code = .invalidParameterValue_TagValueLimitExceeded
            case .unavailableRegion:
                code = .invalidParameterValue_UnavailableRegion
            case .unavailableZone:
                code = .invalidParameterValue_UnavailableZone
            case .zoneIdRegionNotMatch:
                code = .invalidParameterValue_ZoneIdRegionNotMatch
            case .other:
                code = .invalidParameterValue
            }
            return TCCfsError(code, context: self.context)
        }
    }
}
