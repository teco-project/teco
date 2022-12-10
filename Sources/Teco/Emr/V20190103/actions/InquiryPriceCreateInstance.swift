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

extension Emr {
    /// 创建实例询价
    @inlinable
    public func inquiryPriceCreateInstance(_ input: InquiryPriceCreateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquiryPriceCreateInstanceResponse > {
        self.client.execute(action: "InquiryPriceCreateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建实例询价
    @inlinable
    public func inquiryPriceCreateInstance(_ input: InquiryPriceCreateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceCreateInstanceResponse {
        try await self.client.execute(action: "InquiryPriceCreateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquiryPriceCreateInstance请求参数结构体
    public struct InquiryPriceCreateInstanceRequest: TCRequestModel {
        /// 购买实例的时间单位。取值范围：
        /// <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        /// <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        public let timeUnit: String
        
        /// 购买实例的时长。结合TimeUnit一起使用。
        /// <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        /// <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        public let timeSpan: UInt64
        
        /// 货币种类。取值范围：
        /// <li>CNY：表示人民币。</li>
        public let currency: String
        
        /// 实例计费模式。取值范围：
        /// <li>0：表示按量计费。</li>
        /// <li>1：表示包年包月。</li>
        public let payMode: UInt64
        
        /// 是否开启节点高可用。取值范围：
        /// <li>0：表示不开启节点高可用。</li>
        /// <li>1：表示开启节点高可用。</li>
        public let supportHA: UInt64
        
        /// 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）需要选择不同的必选组件：
        /// <li>ProductId为1的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        /// <li>ProductId为2的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        /// <li>ProductId为4的时候，必选组件包括：hadoop-2.8.4、knox-1.2.0、zookeeper-3.4.9</li>
        /// <li>ProductId为7的时候，必选组件包括：hadoop-3.1.2、knox-1.2.0、zookeeper-3.4.9</li>
        public let software: [String]
        
        /// 询价的节点规格。
        public let resourceSpec: NewResourceSpec
        
        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        public let placement: Placement
        
        /// 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        public let vpcSettings: VPCSettings
        
        /// hive共享元数据库类型。取值范围：
        /// <li>EMR_NEW_META：表示集群默认创建</li>
        /// <li>EMR_EXIT_METE：表示集群使用指定EMR-MetaDB。</li>
        /// <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        public let metaType: String?
        
        /// EMR-MetaDB实例
        public let unifyMetaInstanceId: String?
        
        /// 自定义MetaDB信息
        public let metaDBInfo: CustomMetaInfo
        
        /// 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        /// <li>1：表示EMR-V1.3.1。</li>
        /// <li>2：表示EMR-V2.0.1。</li>
        /// <li>4：表示EMR-V2.1.0。</li>
        /// <li>7：表示EMR-V3.0.0。</li>
        public let productId: UInt64?
        
        /// 场景化取值：
        /// Hadoop-Kudu
        /// Hadoop-Zookeeper
        /// Hadoop-Presto
        /// Hadoop-Hbase
        public let sceneName: String?
        
        /// 共用组件信息
        public let externalService: [ExternalService]?
        
        /// 当前默认值为0，跨AZ特性支持后为1
        public let versionID: UInt64?
        
        /// 可用区的规格信息
        public let multiZoneSettings: [MultiZoneSetting]?
        
        public init (timeUnit: String, timeSpan: UInt64, currency: String, payMode: UInt64, supportHA: UInt64, software: [String], resourceSpec: NewResourceSpec, placement: Placement, vpcSettings: VPCSettings, metaType: String?, unifyMetaInstanceId: String?, metaDBInfo: CustomMetaInfo, productId: UInt64?, sceneName: String?, externalService: [ExternalService]?, versionID: UInt64?, multiZoneSettings: [MultiZoneSetting]?) {
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
            self.currency = currency
            self.payMode = payMode
            self.supportHA = supportHA
            self.software = software
            self.resourceSpec = resourceSpec
            self.placement = placement
            self.vpcSettings = vpcSettings
            self.metaType = metaType
            self.unifyMetaInstanceId = unifyMetaInstanceId
            self.metaDBInfo = metaDBInfo
            self.productId = productId
            self.sceneName = sceneName
            self.externalService = externalService
            self.versionID = versionID
            self.multiZoneSettings = multiZoneSettings
        }
        
        enum CodingKeys: String, CodingKey {
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case currency = "Currency"
            case payMode = "PayMode"
            case supportHA = "SupportHA"
            case software = "Software"
            case resourceSpec = "ResourceSpec"
            case placement = "Placement"
            case vpcSettings = "VPCSettings"
            case metaType = "MetaType"
            case unifyMetaInstanceId = "UnifyMetaInstanceId"
            case metaDBInfo = "MetaDBInfo"
            case productId = "ProductId"
            case sceneName = "SceneName"
            case externalService = "ExternalService"
            case versionID = "VersionID"
            case multiZoneSettings = "MultiZoneSettings"
        }
    }
    
    /// InquiryPriceCreateInstance返回参数结构体
    public struct InquiryPriceCreateInstanceResponse: TCResponseModel {
        /// 原价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalCost: Float?
        
        /// 折扣价，单位为元。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let discountCost: Float?
        
        /// 购买实例的时间单位。取值范围：
        /// <li>s：表示秒。</li>
        /// <li>m：表示月份。</li>
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeUnit: String?
        
        /// 购买实例的时长。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeSpan: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case originalCost = "OriginalCost"
            case discountCost = "DiscountCost"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case requestId = "RequestId"
        }
    }
}
