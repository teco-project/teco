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

extension Postgres {
    /// CreateReadOnlyDBInstance请求参数结构体
    public struct CreateReadOnlyDBInstanceRequest: TCRequestModel {
        /// 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        public let specCode: String
        
        /// 实例容量大小，单位：GB。
        public let storage: UInt64
        
        /// 一次性购买的实例数量。取值1-100
        public let instanceCount: UInt64
        
        /// 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        public let period: UInt64
        
        /// 只读实例的主实例ID
        public let masterDBInstanceId: String
        
        /// 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        public let zone: String
        
        /// 项目ID。
        public let projectId: UInt64?
        
        /// 【废弃】不再需要指定，内核版本号与主实例保持一致
        public let dbVersion: String?
        
        /// 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。如果主实例为后付费，只读实例必须也为后付费。
        public let instanceChargeType: String?
        
        /// 是否自动使用代金券。1（是），0（否），默认不使用。
        public let autoVoucher: UInt64?
        
        /// 代金券ID列表，目前仅支持指定一张代金券。
        public let voucherIds: [String]?
        
        /// 续费标记：0-正常续费（默认）；1-自动续费；
        public let autoRenewFlag: Int64?
        
        /// 私有网络ID。
        public let vpcId: String?
        
        /// 私有网络子网ID。
        public let subnetId: String?
        
        /// 优惠活动ID
        public let activityId: Int64?
        
        /// 实例名(后续支持)
        public let name: String?
        
        /// 是否需要支持Ipv6，1：是，0：否
        public let needSupportIpv6: UInt64?
        
        /// 只读组ID。
        public let readOnlyGroupId: String?
        
        /// 实例需要绑定的Tag信息，默认为空（该类型为Tag数组类型）
        public let tagList: Tag?
        
        /// 安全组id
        public let securityGroupIds: [String]?
        
        public init (specCode: String, storage: UInt64, instanceCount: UInt64, period: UInt64, masterDBInstanceId: String, zone: String, projectId: UInt64? = nil, dbVersion: String? = nil, instanceChargeType: String? = nil, autoVoucher: UInt64? = nil, voucherIds: [String]? = nil, autoRenewFlag: Int64? = nil, vpcId: String? = nil, subnetId: String? = nil, activityId: Int64? = nil, name: String? = nil, needSupportIpv6: UInt64? = nil, readOnlyGroupId: String? = nil, tagList: Tag? = nil, securityGroupIds: [String]? = nil) {
            self.specCode = specCode
            self.storage = storage
            self.instanceCount = instanceCount
            self.period = period
            self.masterDBInstanceId = masterDBInstanceId
            self.zone = zone
            self.projectId = projectId
            self.dbVersion = dbVersion
            self.instanceChargeType = instanceChargeType
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.autoRenewFlag = autoRenewFlag
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.activityId = activityId
            self.name = name
            self.needSupportIpv6 = needSupportIpv6
            self.readOnlyGroupId = readOnlyGroupId
            self.tagList = tagList
            self.securityGroupIds = securityGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case specCode = "SpecCode"
            case storage = "Storage"
            case instanceCount = "InstanceCount"
            case period = "Period"
            case masterDBInstanceId = "MasterDBInstanceId"
            case zone = "Zone"
            case projectId = "ProjectId"
            case dbVersion = "DBVersion"
            case instanceChargeType = "InstanceChargeType"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case autoRenewFlag = "AutoRenewFlag"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case activityId = "ActivityId"
            case name = "Name"
            case needSupportIpv6 = "NeedSupportIpv6"
            case readOnlyGroupId = "ReadOnlyGroupId"
            case tagList = "TagList"
            case securityGroupIds = "SecurityGroupIds"
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
    public func createReadOnlyDBInstance(_ input: CreateReadOnlyDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateReadOnlyDBInstanceResponse > {
        self.client.execute(action: "CreateReadOnlyDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建只读实例
    ///
    /// 本接口(CreateReadOnlyDBInstance)用于创建只读实例
    @inlinable
    public func createReadOnlyDBInstance(_ input: CreateReadOnlyDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReadOnlyDBInstanceResponse {
        try await self.client.execute(action: "CreateReadOnlyDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
