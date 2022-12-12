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

extension Dts {
    /// CreateSubscribe请求参数结构体
    public struct CreateSubscribeRequest: TCRequestModel {
        /// 订阅的数据库类型，目前支持的有 mysql
        public let product: String
        
        /// 实例付费类型，1小时计费，0包年包月
        public let payType: Int64
        
        /// 购买时长。PayType为0时必填。单位为月，最大支持120
        public let duration: Int64?
        
        /// 购买数量,默认为1，最大为10
        public let count: Int64?
        
        /// 是否自动续费，0表示不自动续费，1表示自动续费，默认为0。小时计费实例设置该标识无效。
        public let autoRenew: Int64?
        
        /// 实例资源标签
        public let tags: [TagItem]?
        
        /// 用户自定义实例名
        public let name: String?
        
        public init (product: String, payType: Int64, duration: Int64? = nil, count: Int64? = nil, autoRenew: Int64? = nil, tags: [TagItem]? = nil, name: String? = nil) {
            self.product = product
            self.payType = payType
            self.duration = duration
            self.count = count
            self.autoRenew = autoRenew
            self.tags = tags
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case payType = "PayType"
            case duration = "Duration"
            case count = "Count"
            case autoRenew = "AutoRenew"
            case tags = "Tags"
            case name = "Name"
        }
    }
    
    /// CreateSubscribe返回参数结构体
    public struct CreateSubscribeResponse: TCResponseModel {
        /// 数据订阅实例的ID数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscribeIds: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case subscribeIds = "SubscribeIds"
            case requestId = "RequestId"
        }
    }
    
    /// 创建订阅对象
    ///
    /// 本接口(CreateSubscribe)用于创建一个数据订阅实例。
    @inlinable
    public func createSubscribe(_ input: CreateSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSubscribeResponse > {
        self.client.execute(action: "CreateSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建订阅对象
    ///
    /// 本接口(CreateSubscribe)用于创建一个数据订阅实例。
    @inlinable
    public func createSubscribe(_ input: CreateSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubscribeResponse {
        try await self.client.execute(action: "CreateSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
