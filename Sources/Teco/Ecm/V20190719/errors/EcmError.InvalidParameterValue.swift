//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCEcmError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case addressQuotaLimitExceeded = "InvalidParameterValue.AddressQuotaLimitExceeded"
            case bandwidthOutOfRange = "InvalidParameterValue.BandwidthOutOfRange"
            case cidrNotInPeerVpc = "InvalidParameterValue.CidrNotInPeerVpc"
            case duplicate = "InvalidParameterValue.Duplicate"
            case filterLimitExceeded = "InvalidParameterValue.FilterLimitExceeded"
            case imageDuplicate = "InvalidParameterValue.ImageDuplicate"
            case imageNameDuplicate = "InvalidParameterValue.ImageNameDuplicate"
            case imageSizeLargeThanSysDiskSize = "InvalidParameterValue.ImageSizeLargeThanSysDiskSize"
            case instanceConfigNotMatch = "InvalidParameterValue.InstanceConfigNotMatch"
            case instanceIdNotSupported = "InvalidParameterValue.InstanceIdNotSupported"
            case instanceNameTooLong = "InvalidParameterValue.InstanceNameTooLong"
            case instanceTypeNotMatchPid = "InvalidParameterValue.InstanceTypeNotMatchPid"
            case insufficientRefundQuota = "InvalidParameterValue.InsufficientRefundQuota"
            case invaildAddressId = "InvalidParameterValue.InvaildAddressId"
            case invaildDescribeInstance = "InvalidParameterValue.InvaildDescribeInstance"
            case invaildEniID = "InvalidParameterValue.InvaildEniID"
            case invaildHostName = "InvalidParameterValue.InvaildHostName"
            case invaildModifyParam = "InvalidParameterValue.InvaildModifyParam"
            case invaildModuleNum = "InvalidParameterValue.InvaildModuleNum"
            case invaildPageParam = "InvalidParameterValue.InvaildPageParam"
            case invaildPassword = "InvalidParameterValue.InvaildPassword"
            case invalidAddressCount = "InvalidParameterValue.InvalidAddressCount"
            case invalidBandwidth = "InvalidParameterValue.InvalidBandwidth"
            case invalidBandwidthIn = "InvalidParameterValue.InvalidBandwidthIn"
            case invalidBandwidthInAndOut = "InvalidParameterValue.InvalidBandwidthInAndOut"
            case invalidBillingType = "InvalidParameterValue.InvalidBillingType"
            case invalidDataDiskNum = "InvalidParameterValue.InvalidDataDiskNum"
            case invalidDataDiskSize = "InvalidParameterValue.InvalidDataDiskSize"
            case invalidDataDiskType = "InvalidParameterValue.InvalidDataDiskType"
            case invalidDisk = "InvalidParameterValue.InvalidDisk"
            case invalidDiskId = "InvalidParameterValue.InvalidDiskId"
            case invalidDiskType = "InvalidParameterValue.InvalidDiskType"
            case invalidEIPDirectService = "InvalidParameterValue.InvalidEIPDirectService"
            case invalidEcmRegion = "InvalidParameterValue.InvalidEcmRegion"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case invalidISPInNode = "InvalidParameterValue.InvalidISPInNode"
            case invalidImageArchitecture = "InvalidParameterValue.InvalidImageArchitecture"
            case invalidImageID = "InvalidParameterValue.InvalidImageID"
            case invalidInstanceChargeType = "InvalidParameterValue.InvalidInstanceChargeType"
            case invalidInstanceID = "InvalidParameterValue.InvalidInstanceID"
            case invalidInstanceType = "InvalidParameterValue.InvalidInstanceType"
            case invalidInstanceTypeConfigID = "InvalidParameterValue.InvalidInstanceTypeConfigID"
            case invalidInternetChargeType = "InvalidParameterValue.InvalidInternetChargeType"
            case invalidKeyPairId = "InvalidParameterValue.InvalidKeyPairId"
            case invalidKeyPairName = "InvalidParameterValue.InvalidKeyPairName"
            case invalidLoadBalancerNum = "InvalidParameterValue.InvalidLoadBalancerNum"
            case invalidLoadBalancerType = "InvalidParameterValue.InvalidLoadBalancerType"
            case invalidModuleID = "InvalidParameterValue.InvalidModuleID"
            case invalidModuleIDAndInstanceTypeConfigID = "InvalidParameterValue.InvalidModuleIDAndInstanceTypeConfigID"
            case invalidModuleIDAndInstanceTypeID = "InvalidParameterValue.InvalidModuleIDAndInstanceTypeID"
            case invalidModuleName = "InvalidParameterValue.InvalidModuleName"
            case invalidOrderByField = "InvalidParameterValue.InvalidOrderByField"
            case invalidPublicParam = "InvalidParameterValue.InvalidPublicParam"
            case invalidRegion = "InvalidParameterValue.InvalidRegion"
            case invalidSecurityGroupID = "InvalidParameterValue.InvalidSecurityGroupID"
            case invalidSnapshot = "InvalidParameterValue.InvalidSnapshot"
            case invalidSnapshotId = "InvalidParameterValue.InvalidSnapshotId"
            case invalidSystemDiskSize = "InvalidParameterValue.InvalidSystemDiskSize"
            case invalidSystemDiskType = "InvalidParameterValue.InvalidSystemDiskType"
            case invalidTime = "InvalidParameterValue.InvalidTime"
            case invalidZone = "InvalidParameterValue.InvalidZone"
            case invalidZoneInstanceCount = "InvalidParameterValue.InvalidZoneInstanceCount"
            case invalidZoneInstanceType = "InvalidParameterValue.InvalidZoneInstanceType"
            case length = "InvalidParameterValue.Length"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case malformed = "InvalidParameterValue.Malformed"
            case moduleNotAllowChange = "InvalidParameterValue.ModuleNotAllowChange"
            case nodeNotSupportIPv6 = "InvalidParameterValue.NodeNotSupportIPv6"
            case objectNotCurrentSubnet = "InvalidParameterValue.ObjectNotCurrentSubnet"
            case objectVpcNotCurrentVpc = "InvalidParameterValue.ObjectVpcNotCurrentVpc"
            case parameterValueTooLarge = "InvalidParameterValue.ParameterValueTooLarge"
            case range = "InvalidParameterValue.Range"
            case reserved = "InvalidParameterValue.Reserved"
            case subnetConflict = "InvalidParameterValue.SubnetConflict"
            case subnetNotExist = "InvalidParameterValue.SubnetNotExist"
            case subnetRange = "InvalidParameterValue.SubnetRange"
            case tagNumOutOfRange = "InvalidParameterValue.TagNumOutOfRange"
            case taskNotFound = "InvalidParameterValue.TaskNotFound"
            case terminateTimeSmaller = "InvalidParameterValue.TerminateTimeSmaller"
            case tooLong = "InvalidParameterValue.TooLong"
            case unmatchedBillingType = "InvalidParameterValue.UnmatchedBillingType"
            case unsupportedRegion = "InvalidParameterValue.UnsupportedRegion"
            case userNotSupportIPv6 = "InvalidParameterValue.UserNotSupportIPv6"
            case vpcCidrConflict = "InvalidParameterValue.VpcCidrConflict"
            case other = "InvalidParameterValue"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 申请数量超限。
        public static var addressQuotaLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.addressQuotaLimitExceeded)
        }
        
        /// 超多带宽限制。
        public static var bandwidthOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.bandwidthOutOfRange)
        }
        
        /// 目的网段不在对端VPC的CIDR范围内。
        public static var cidrNotInPeerVpc: InvalidParameterValue {
            InvalidParameterValue(.cidrNotInPeerVpc)
        }
        
        /// 重复数据。
        public static var duplicate: InvalidParameterValue {
            InvalidParameterValue(.duplicate)
        }
        
        /// Filter参数数值超过限制。
        public static var filterLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.filterLimitExceeded)
        }
        
        /// 镜像已导入。
        public static var imageDuplicate: InvalidParameterValue {
            InvalidParameterValue(.imageDuplicate)
        }
        
        /// 镜像名称重复。
        public static var imageNameDuplicate: InvalidParameterValue {
            InvalidParameterValue(.imageNameDuplicate)
        }
        
        /// 镜像大小大于系统盘大小。
        public static var imageSizeLargeThanSysDiskSize: InvalidParameterValue {
            InvalidParameterValue(.imageSizeLargeThanSysDiskSize)
        }
        
        /// 实例配置不匹配。
        public static var instanceConfigNotMatch: InvalidParameterValue {
            InvalidParameterValue(.instanceConfigNotMatch)
        }
        
        /// 实例不支持当前操作。
        public static var instanceIdNotSupported: InvalidParameterValue {
            InvalidParameterValue(.instanceIdNotSupported)
        }
        
        /// 实例名字长度超出限制。
        public static var instanceNameTooLong: InvalidParameterValue {
            InvalidParameterValue(.instanceNameTooLong)
        }
        
        /// 实例机型和pid不匹配。
        public static var instanceTypeNotMatchPid: InvalidParameterValue {
            InvalidParameterValue(.instanceTypeNotMatchPid)
        }
        
        /// InvalidParameterValue.InsufficientRefundQuota
        public static var insufficientRefundQuota: InvalidParameterValue {
            InvalidParameterValue(.insufficientRefundQuota)
        }
        
        /// 无效的EIP。
        public static var invaildAddressId: InvalidParameterValue {
            InvalidParameterValue(.invaildAddressId)
        }
        
        /// 您的输入有误或无相应的操作权限。
        public static var invaildDescribeInstance: InvalidParameterValue {
            InvalidParameterValue(.invaildDescribeInstance)
        }
        
        /// 无效的弹性网卡ID。
        public static var invaildEniID: InvalidParameterValue {
            InvalidParameterValue(.invaildEniID)
        }
        
        /// HostName不合法。
        public static var invaildHostName: InvalidParameterValue {
            InvalidParameterValue(.invaildHostName)
        }
        
        /// 参数错误。
        public static var invaildModifyParam: InvalidParameterValue {
            InvalidParameterValue(.invaildModifyParam)
        }
        
        /// 模块数量不合法。
        public static var invaildModuleNum: InvalidParameterValue {
            InvalidParameterValue(.invaildModuleNum)
        }
        
        /// 分页参数不合法。
        public static var invaildPageParam: InvalidParameterValue {
            InvalidParameterValue(.invaildPageParam)
        }
        
        /// 密码不合法。
        public static var invaildPassword: InvalidParameterValue {
            InvalidParameterValue(.invaildPassword)
        }
        
        /// 当同步绑定弹性网卡时，一次只能申请单个弹性IP。
        public static var invalidAddressCount: InvalidParameterValue {
            InvalidParameterValue(.invalidAddressCount)
        }
        
        /// 带宽大小不合法。
        public static var invalidBandwidth: InvalidParameterValue {
            InvalidParameterValue(.invalidBandwidth)
        }
        
        /// 入带宽大小超过限额。
        public static var invalidBandwidthIn: InvalidParameterValue {
            InvalidParameterValue(.invalidBandwidthIn)
        }
        
        /// 出入带宽必须一致。
        public static var invalidBandwidthInAndOut: InvalidParameterValue {
            InvalidParameterValue(.invalidBandwidthInAndOut)
        }
        
        /// 该用户不支持当前所选择的计费类型。
        public static var invalidBillingType: InvalidParameterValue {
            InvalidParameterValue(.invalidBillingType)
        }
        
        /// 数据盘个数不合法。
        public static var invalidDataDiskNum: InvalidParameterValue {
            InvalidParameterValue(.invalidDataDiskNum)
        }
        
        /// 数据盘大小不合法。
        public static var invalidDataDiskSize: InvalidParameterValue {
            InvalidParameterValue(.invalidDataDiskSize)
        }
        
        /// 数据盘类型不合法。
        public static var invalidDataDiskType: InvalidParameterValue {
            InvalidParameterValue(.invalidDataDiskType)
        }
        
        /// InvalidParameterValue.InvalidDisk
        public static var invalidDisk: InvalidParameterValue {
            InvalidParameterValue(.invalidDisk)
        }
        
        /// InvalidParameterValue.InvalidDiskId
        public static var invalidDiskId: InvalidParameterValue {
            InvalidParameterValue(.invalidDiskId)
        }
        
        /// InvalidParameterValue.InvalidDiskType
        public static var invalidDiskType: InvalidParameterValue {
            InvalidParameterValue(.invalidDiskType)
        }
        
        /// windows镜像不支持IP直通。
        public static var invalidEIPDirectService: InvalidParameterValue {
            InvalidParameterValue(.invalidEIPDirectService)
        }
        
        /// 地域参数不合法。
        public static var invalidEcmRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidEcmRegion)
        }
        
        /// 无效过滤器。
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }
        
        /// 运营商不合法。
        public static var invalidISPInNode: InvalidParameterValue {
            InvalidParameterValue(.invalidISPInNode)
        }
        
        /// 内存4G以上机型不支持32位操作系统镜像。
        public static var invalidImageArchitecture: InvalidParameterValue {
            InvalidParameterValue(.invalidImageArchitecture)
        }
        
        /// 镜像ID不合法。
        public static var invalidImageID: InvalidParameterValue {
            InvalidParameterValue(.invalidImageID)
        }
        
        /// 实例计费类型不合法。
        public static var invalidInstanceChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceChargeType)
        }
        
        /// 实例ID不合法。
        public static var invalidInstanceID: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceID)
        }
        
        /// 不支持调整高IO机型配置。
        public static var invalidInstanceType: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceType)
        }
        
        /// 机型ID不合法。
        public static var invalidInstanceTypeConfigID: InvalidParameterValue {
            InvalidParameterValue(.invalidInstanceTypeConfigID)
        }
        
        /// 计费类型不合法。
        public static var invalidInternetChargeType: InvalidParameterValue {
            InvalidParameterValue(.invalidInternetChargeType)
        }
        
        /// 秘钥ID无效。
        public static var invalidKeyPairId: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyPairId)
        }
        
        /// 秘钥名称异常。
        public static var invalidKeyPairName: InvalidParameterValue {
            InvalidParameterValue(.invalidKeyPairName)
        }
        
        /// 负载均衡数量不合法。
        public static var invalidLoadBalancerNum: InvalidParameterValue {
            InvalidParameterValue(.invalidLoadBalancerNum)
        }
        
        /// 负载均衡类型不合法。
        public static var invalidLoadBalancerType: InvalidParameterValue {
            InvalidParameterValue(.invalidLoadBalancerType)
        }
        
        /// 模块ID不合法。
        public static var invalidModuleID: InvalidParameterValue {
            InvalidParameterValue(.invalidModuleID)
        }
        
        /// ModuleId和InstanceType参数不可同时为空。
        public static var invalidModuleIDAndInstanceTypeConfigID: InvalidParameterValue {
            InvalidParameterValue(.invalidModuleIDAndInstanceTypeConfigID)
        }
        
        /// ModuleId和InstanceType参数不可同时为空。
        public static var invalidModuleIDAndInstanceTypeID: InvalidParameterValue {
            InvalidParameterValue(.invalidModuleIDAndInstanceTypeID)
        }
        
        /// 模块名称冲突。
        public static var invalidModuleName: InvalidParameterValue {
            InvalidParameterValue(.invalidModuleName)
        }
        
        /// 排序字段不合法。
        public static var invalidOrderByField: InvalidParameterValue {
            InvalidParameterValue(.invalidOrderByField)
        }
        
        /// 公共参数不合法。
        public static var invalidPublicParam: InvalidParameterValue {
            InvalidParameterValue(.invalidPublicParam)
        }
        
        /// ecm region不合法。
        public static var invalidRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidRegion)
        }
        
        /// 全组ID不合法。
        public static var invalidSecurityGroupID: InvalidParameterValue {
            InvalidParameterValue(.invalidSecurityGroupID)
        }
        
        /// InvalidParameterValue.InvalidSnapshot
        public static var invalidSnapshot: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshot)
        }
        
        /// InvalidParameterValue.InvalidSnapshotId
        public static var invalidSnapshotId: InvalidParameterValue {
            InvalidParameterValue(.invalidSnapshotId)
        }
        
        /// 系统盘大小不合法。
        public static var invalidSystemDiskSize: InvalidParameterValue {
            InvalidParameterValue(.invalidSystemDiskSize)
        }
        
        /// 系统盘类型不合法。
        public static var invalidSystemDiskType: InvalidParameterValue {
            InvalidParameterValue(.invalidSystemDiskType)
        }
        
        /// 时间不合法。
        public static var invalidTime: InvalidParameterValue {
            InvalidParameterValue(.invalidTime)
        }
        
        /// zone不合法。
        public static var invalidZone: InvalidParameterValue {
            InvalidParameterValue(.invalidZone)
        }
        
        /// 城市或者数量不合法。
        public static var invalidZoneInstanceCount: InvalidParameterValue {
            InvalidParameterValue(.invalidZoneInstanceCount)
        }
        
        /// 用区不支持此机型。
        public static var invalidZoneInstanceType: InvalidParameterValue {
            InvalidParameterValue(.invalidZoneInstanceType)
        }
        
        /// 参数长度错误。
        public static var length: InvalidParameterValue {
            InvalidParameterValue(.length)
        }
        
        /// 参数值超出限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }
        
        /// 入参格式不合法。
        public static var malformed: InvalidParameterValue {
            InvalidParameterValue(.malformed)
        }
        
        /// 已有实例的边缘模块不支持调整默认配置。
        public static var moduleNotAllowChange: InvalidParameterValue {
            InvalidParameterValue(.moduleNotAllowChange)
        }
        
        /// 节点不支持ipv6。
        public static var nodeNotSupportIPv6: InvalidParameterValue {
            InvalidParameterValue(.nodeNotSupportIPv6)
        }
        
        /// 对象不在当前子网内。
        public static var objectNotCurrentSubnet: InvalidParameterValue {
            InvalidParameterValue(.objectNotCurrentSubnet)
        }
        
        /// 指定对象不是当前的私有网络。
        public static var objectVpcNotCurrentVpc: InvalidParameterValue {
            InvalidParameterValue(.objectVpcNotCurrentVpc)
        }
        
        /// 参数值超出限制。
        public static var parameterValueTooLarge: InvalidParameterValue {
            InvalidParameterValue(.parameterValueTooLarge)
        }
        
        /// 参数值不在指定范围。
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }
        
        /// 参数值是一个系统保留对象。
        public static var reserved: InvalidParameterValue {
            InvalidParameterValue(.reserved)
        }
        
        /// 指定CIDR与同一个私有网络内的另一个子网发生冲突。
        public static var subnetConflict: InvalidParameterValue {
            InvalidParameterValue(.subnetConflict)
        }
        
        public static var subnetNotExist: InvalidParameterValue {
            InvalidParameterValue(.subnetNotExist)
        }
        
        /// 无效的子网网段。
        public static var subnetRange: InvalidParameterValue {
            InvalidParameterValue(.subnetRange)
        }
        
        /// 标签数量超过限制。
        public static var tagNumOutOfRange: InvalidParameterValue {
            InvalidParameterValue(.tagNumOutOfRange)
        }
        
        /// 无法找到任务。
        public static var taskNotFound: InvalidParameterValue {
            InvalidParameterValue(.taskNotFound)
        }
        
        /// 定时销毁时间早于当前时间。
        public static var terminateTimeSmaller: InvalidParameterValue {
            InvalidParameterValue(.terminateTimeSmaller)
        }
        
        /// 参数值太长。
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }
        
        /// 该机型不支持当前所选择的计费类型。
        public static var unmatchedBillingType: InvalidParameterValue {
            InvalidParameterValue(.unmatchedBillingType)
        }
        
        /// 不支持该区域。
        public static var unsupportedRegion: InvalidParameterValue {
            InvalidParameterValue(.unsupportedRegion)
        }
        
        /// 用户不支持ipv6。
        public static var userNotSupportIPv6: InvalidParameterValue {
            InvalidParameterValue(.userNotSupportIPv6)
        }
        
        /// 目的网段和当前VPC的CIDR冲突。
        public static var vpcCidrConflict: InvalidParameterValue {
            InvalidParameterValue(.vpcCidrConflict)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCEcmError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCEcmError.InvalidParameterValue, rhs: TCEcmError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEcmError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEcmError.InvalidParameterValue {
    public func toEcmError() -> TCEcmError {
        guard let code = TCEcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEcmError(code, context: self.context)
    }
}