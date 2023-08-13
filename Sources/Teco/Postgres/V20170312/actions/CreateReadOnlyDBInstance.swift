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

import Logging
import NIOCore
import TecoCore

extension Postgres {
    /// CreateReadOnlyDBInstance请求参数结构体
    public struct CreateReadOnlyDBInstanceRequest: TCRequestModel {
        /// 实例所属主可用区， 如：ap-guangzhou-3；
        /// 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        public let zone: String

        /// 只读实例的主实例ID。
        public let masterDBInstanceId: String

        /// 售卖规格码。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)的返回值中的SpecCode字段来获取。
        public let specCode: String

        /// 实例容量大小，单位：GB。
        public let storage: UInt64

        /// 购买实例数量，取值范围：[1-10]。一次性购买支持最大数量10个，若超过该数量，可进行多次调用进行购买。
        public let instanceCount: UInt64

        /// 购买时长，单位：月。
        /// - 预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36
        /// - 后付费：只支持1
        public let period: UInt64

        /// 私有网络ID，形如vpc-xxxxxxxx。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372) ，从接口返回中的unVpcId字段获取。
        public let vpcId: String?

        /// 私有网络子网ID，形如subnet-xxxxxxxx。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        public let subnetId: String?

        /// 实例计费类型，目前支持：
        /// - PREPAID：预付费，即包年包月。
        /// - POSTPAID_BY_HOUR：后付费，即按量计费。
        /// 默认值：PREPAID。如果主实例为后付费，只读实例必须也为后付费。
        public let instanceChargeType: String?

        /// 是否自动使用代金券：
        /// - 0：否
        /// - 1：是
        /// 默认值：0
        public let autoVoucher: UInt64?

        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?

        /// 续费标记：
        /// - 0：手动续费
        /// - 1：自动续费
        /// 默认值：0
        public let autoRenewFlag: Int64?

        /// 项目ID。
        public let projectId: UInt64?

        /// 优惠活动ID
        public let activityId: Int64?

        /// 只读组ID。
        public let readOnlyGroupId: String?

        /// 实例需要绑定的Tag信息，默认为空；可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
        public let tagList: Tag?

        /// 实例所属安全组，该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 是否需要支持Ipv6：
        /// - 0：否
        /// - 1：是
        /// 默认值：0
        public let needSupportIpv6: UInt64?

        /// 实例名(后续支持)
        public let name: String?

        /// 【废弃】不再需要指定，内核版本号与主实例保持一致
        public let dbVersion: String?

        public init(zone: String, masterDBInstanceId: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, vpcId: String? = nil, subnetId: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, autoRenewFlag: Int64? = nil, projectId: UInt64? = nil, activityId: Int64? = nil, readOnlyGroupId: String? = nil, tagList: Tag? = nil, securityGroupIds: [String]? = nil, needSupportIpv6: UInt64? = nil, name: String? = nil, dbVersion: String? = nil) {
            self.zone = zone
            self.masterDBInstanceId = masterDBInstanceId
            self.specCode = specCode
            self.storage = storage
            self.instanceCount = instanceCount
            self.period = period
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceChargeType = instanceChargeType
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.autoRenewFlag = autoRenewFlag
            self.projectId = projectId
            self.activityId = activityId
            self.readOnlyGroupId = readOnlyGroupId
            self.tagList = tagList
            self.securityGroupIds = securityGroupIds
            self.needSupportIpv6 = needSupportIpv6
            self.name = name
            self.dbVersion = dbVersion
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case masterDBInstanceId = "MasterDBInstanceId"
            case specCode = "SpecCode"
            case storage = "Storage"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceChargeType = "InstanceChargeType"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case autoRenewFlag = "AutoRenewFlag"
            case projectId = "ProjectId"
            case activityId = "ActivityId"
            case readOnlyGroupId = "ReadOnlyGroupId"
            case tagList = "TagList"
            case securityGroupIds = "SecurityGroupIds"
            case needSupportIpv6 = "NeedSupportIpv6"
            case name = "Name"
            case dbVersion = "DBVersion"
        }
    }

    /// CreateReadOnlyDBInstance返回参数结构体
    public struct CreateReadOnlyDBInstanceResponse: TCResponseModel {
        /// 订单号列表。每个实例对应一个订单号
        public let dealNames: [String]

        /// 冻结流水号
        public let billId: String

        /// 创建成功的实例ID集合，只在后付费情景下有返回值
        public let dbInstanceIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
            case billId = "BillId"
            case dbInstanceIdSet = "DBInstanceIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建只读实例
    ///
    /// 本接口(CreateReadOnlyDBInstance)用于创建只读实例
    @inlinable
    public func createReadOnlyDBInstance(_ input: CreateReadOnlyDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReadOnlyDBInstanceResponse> {
        self.client.execute(action: "CreateReadOnlyDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建只读实例
    ///
    /// 本接口(CreateReadOnlyDBInstance)用于创建只读实例
    @inlinable
    public func createReadOnlyDBInstance(_ input: CreateReadOnlyDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReadOnlyDBInstanceResponse {
        try await self.client.execute(action: "CreateReadOnlyDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建只读实例
    ///
    /// 本接口(CreateReadOnlyDBInstance)用于创建只读实例
    @inlinable
    public func createReadOnlyDBInstance(zone: String, masterDBInstanceId: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, vpcId: String? = nil, subnetId: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, autoRenewFlag: Int64? = nil, projectId: UInt64? = nil, activityId: Int64? = nil, readOnlyGroupId: String? = nil, tagList: Tag? = nil, securityGroupIds: [String]? = nil, needSupportIpv6: UInt64? = nil, name: String? = nil, dbVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReadOnlyDBInstanceResponse> {
        self.createReadOnlyDBInstance(.init(zone: zone, masterDBInstanceId: masterDBInstanceId, specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, vpcId: vpcId, subnetId: subnetId, instanceChargeType: instanceChargeType, autoVoucher: autoVoucher, voucherIds: voucherIds, autoRenewFlag: autoRenewFlag, projectId: projectId, activityId: activityId, readOnlyGroupId: readOnlyGroupId, tagList: tagList, securityGroupIds: securityGroupIds, needSupportIpv6: needSupportIpv6, name: name, dbVersion: dbVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 创建只读实例
    ///
    /// 本接口(CreateReadOnlyDBInstance)用于创建只读实例
    @inlinable
    public func createReadOnlyDBInstance(zone: String, masterDBInstanceId: String, specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, vpcId: String? = nil, subnetId: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, autoRenewFlag: Int64? = nil, projectId: UInt64? = nil, activityId: Int64? = nil, readOnlyGroupId: String? = nil, tagList: Tag? = nil, securityGroupIds: [String]? = nil, needSupportIpv6: UInt64? = nil, name: String? = nil, dbVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReadOnlyDBInstanceResponse {
        try await self.createReadOnlyDBInstance(.init(zone: zone, masterDBInstanceId: masterDBInstanceId, specCode: specCode, storage: storage, instanceCount: instanceCount, period: period, vpcId: vpcId, subnetId: subnetId, instanceChargeType: instanceChargeType, autoVoucher: autoVoucher, voucherIds: voucherIds, autoRenewFlag: autoRenewFlag, projectId: projectId, activityId: activityId, readOnlyGroupId: readOnlyGroupId, tagList: tagList, securityGroupIds: securityGroupIds, needSupportIpv6: needSupportIpv6, name: name, dbVersion: dbVersion), region: region, logger: logger, on: eventLoop)
    }
}
