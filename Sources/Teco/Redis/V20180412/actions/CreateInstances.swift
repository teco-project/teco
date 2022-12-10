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

extension Redis {
    /// 创建Redis实例
    ///
    /// 本接口(CreateInstances)用于创建redis实例。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateInstancesResponse > {
        self.client.execute(action: "CreateInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建Redis实例
    ///
    /// 本接口(CreateInstances)用于创建redis实例。
    @inlinable
    public func createInstances(_ input: CreateInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancesResponse {
        try await self.client.execute(action: "CreateInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateInstances请求参数结构体
    public struct CreateInstancesRequest: TCRequestModel {
        /// 实例类型：2 – Redis2.8内存版(标准架构)，3 – CKV 3.2内存版(标准架构)，4 – CKV 3.2内存版(集群架构)，6 – Redis4.0内存版(标准架构)，7 – Redis4.0内存版(集群架构)，8 – Redis5.0内存版(标准架构)，9 – Redis5.0内存版(集群架构)，15 – Redis6.0内存版(标准架构)，16 – Redis6.0内存版(集群架构)。
        public let typeId: UInt64
        
        /// 内存容量，单位为MB， 数值需为1024的整数倍，具体规格以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        /// TypeId为标准架构时，MemSize是实例总内存容量；TypeId为集群架构时，MemSize是单分片内存容量。
        public let memSize: UInt64
        
        /// 实例数量，单次购买实例数量以 [查询产品售卖规格](https://cloud.tencent.com/document/api/239/30600) 返回的规格为准。
        public let goodsNum: UInt64
        
        /// 购买时长，在创建包年包月实例的时候需要填写，按量计费实例填1即可，单位：月，取值范围 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        public let period: UInt64
        
        /// 付费方式:0-按量计费，1-包年包月。
        public let billingMode: Int64
        
        /// 实例所属的可用区ID，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        public let zoneId: UInt64?
        
        /// 实例密码，当输入参数NoAuth为true且使用私有网络VPC时，Password为非必填，否则Password为必填参数。
        /// 当实例类型TypeId为Redis2.8、4.0和5.0时，其密码格式为：8-30个字符，至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种，不能以"/"开头；
        /// 当实例类型TypeId为CKV 3.2时，其密码格式为：8-30个字符，必须包含字母和数字 且 不包含其他字符。
        public let password: String?
        
        /// 私有网络ID，如果不传则默认选择基础网络，请使用私有网络列表查询，如：vpc-sad23jfdfk。
        public let vpcId: String?
        
        /// 基础网络下， subnetId无效； vpc子网下，取值以查询子网列表，如：subnet-fdj24n34j2。
        public let subnetId: String?
        
        /// 项目id，取值以用户账户>用户账户相关接口查询>项目列表返回的projectId为准。
        public let projectId: Int64?
        
        /// 自动续费标识。0 - 默认状态（手动续费）；1 - 自动续费；2 - 明确不自动续费。
        public let autoRenew: UInt64?
        
        /// 安全组id数组。
        public let securityGroupIdList: [String]?
        
        /// 用户自定义的端口 不填则默认为6379，范围[1024,65535]。
        public let vPort: UInt64?
        
        /// 实例分片数量，购买标准版实例不需要填写，集群版分片数量范围[3,5,8,12,16,24,32,64,96,128]。
        public let redisShardNum: Int64?
        
        /// 实例副本数量，Redis 2.8标准版、CKV标准版只支持1副本，4.0、5.0标准版和集群版支持1-5个副本。
        public let redisReplicasNum: Int64?
        
        /// 是否支持副本只读，Redis 2.8标准版、CKV标准版不支持副本只读，开启副本只读，实例将自动读写分离，写请求路由到主节点，读请求路由到副本节点，如需开启副本只读建议副本数>=2。
        public let replicasReadonly: Bool?
        
        /// 实例名称，长度小于60的中文/英文/数字/"-"/"_"。
        public let instanceName: String?
        
        /// 是否支持免密，true-免密实例，false-非免密实例，默认为非免密实例，仅VPC网络的实例支持免密码访问。
        public let noAuth: Bool?
        
        /// 实例的节点信息，目前支持传入节点的类型（主节点或者副本节点），节点的可用区。单可用区部署不需要传递此参数。
        public let nodeSet: [RedisNodeInfo]?
        
        /// 购买实例绑定标签
        public let resourceTags: [ResourceTag]?
        
        /// 实例所属的可用区名称，可参考[地域和可用区](https://cloud.tencent.com/document/product/239/4106)  。
        public let zoneName: String?
        
        /// 创建实例需要应用的参数模板ID，不传则应用默认的参数模板
        public let templateId: String?
        
        /// false ：默认值,发送正常请求，通过检查后直接创建实例 true：发送检查请求，不会创建实例。
        public let dryRun: Bool?
        
        /// "local"本地盘版，"cloud"云盘版，"cdc"独享集群版，如果不传默认发货为本地盘版本
        public let productVersion: String?
        
        /// 独享集群id，ProductVersion="cdc"时必传
        public let redisClusterId: String?
        
        public init (typeId: UInt64, memSize: UInt64, goodsNum: UInt64, period: UInt64, billingMode: Int64, zoneId: UInt64?, password: String?, vpcId: String?, subnetId: String?, projectId: Int64?, autoRenew: UInt64?, securityGroupIdList: [String]?, vPort: UInt64?, redisShardNum: Int64?, redisReplicasNum: Int64?, replicasReadonly: Bool?, instanceName: String?, noAuth: Bool?, nodeSet: [RedisNodeInfo]?, resourceTags: [ResourceTag]?, zoneName: String?, templateId: String?, dryRun: Bool?, productVersion: String?, redisClusterId: String?) {
            self.typeId = typeId
            self.memSize = memSize
            self.goodsNum = goodsNum
            self.period = period
            self.billingMode = billingMode
            self.zoneId = zoneId
            self.password = password
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.projectId = projectId
            self.autoRenew = autoRenew
            self.securityGroupIdList = securityGroupIdList
            self.vPort = vPort
            self.redisShardNum = redisShardNum
            self.redisReplicasNum = redisReplicasNum
            self.replicasReadonly = replicasReadonly
            self.instanceName = instanceName
            self.noAuth = noAuth
            self.nodeSet = nodeSet
            self.resourceTags = resourceTags
            self.zoneName = zoneName
            self.templateId = templateId
            self.dryRun = dryRun
            self.productVersion = productVersion
            self.redisClusterId = redisClusterId
        }
        
        enum CodingKeys: String, CodingKey {
            case typeId = "TypeId"
            case memSize = "MemSize"
            case goodsNum = "GoodsNum"
            case period = "Period"
            case billingMode = "BillingMode"
            case zoneId = "ZoneId"
            case password = "Password"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case autoRenew = "AutoRenew"
            case securityGroupIdList = "SecurityGroupIdList"
            case vPort = "VPort"
            case redisShardNum = "RedisShardNum"
            case redisReplicasNum = "RedisReplicasNum"
            case replicasReadonly = "ReplicasReadonly"
            case instanceName = "InstanceName"
            case noAuth = "NoAuth"
            case nodeSet = "NodeSet"
            case resourceTags = "ResourceTags"
            case zoneName = "ZoneName"
            case templateId = "TemplateId"
            case dryRun = "DryRun"
            case productVersion = "ProductVersion"
            case redisClusterId = "RedisClusterId"
        }
    }
    
    /// CreateInstances返回参数结构体
    public struct CreateInstancesResponse: TCResponseModel {
        /// 交易的ID
        public let dealId: String
        
        /// 实例ID
        public let instanceIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }
}