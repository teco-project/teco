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

extension Cdc {
    /// CreateDedicatedClusterOrder请求参数结构体
    public struct CreateDedicatedClusterOrderRequest: TCRequestModel {
        /// 专用集群id
        public let dedicatedClusterId: String

        /// order关联的专用集群类型数组
        public let dedicatedClusterTypes: [DedicatedClusterTypeInfo]?

        /// order关联的cos存储信息
        public let cosInfo: CosInfo?

        /// order关联的cbs存储信息
        public let cbsInfo: CbsInfo?

        /// 购买来源，默认为cloudApi
        public let purchaseSource: String?

        /// 当调用API接口提交订单时，需要提交DedicatedClusterOrderId
        public let dedicatedClusterOrderId: String?

        public init(dedicatedClusterId: String, dedicatedClusterTypes: [DedicatedClusterTypeInfo]? = nil, cosInfo: CosInfo? = nil, cbsInfo: CbsInfo? = nil, purchaseSource: String? = nil, dedicatedClusterOrderId: String? = nil) {
            self.dedicatedClusterId = dedicatedClusterId
            self.dedicatedClusterTypes = dedicatedClusterTypes
            self.cosInfo = cosInfo
            self.cbsInfo = cbsInfo
            self.purchaseSource = purchaseSource
            self.dedicatedClusterOrderId = dedicatedClusterOrderId
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
            case dedicatedClusterTypes = "DedicatedClusterTypes"
            case cosInfo = "CosInfo"
            case cbsInfo = "CbsInfo"
            case purchaseSource = "PurchaseSource"
            case dedicatedClusterOrderId = "DedicatedClusterOrderId"
        }
    }

    /// CreateDedicatedClusterOrder返回参数结构体
    public struct CreateDedicatedClusterOrderResponse: TCResponseModel {
        /// 专用集群订单id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dedicatedClusterOrderId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterOrderId = "DedicatedClusterOrderId"
            case requestId = "RequestId"
        }
    }

    /// 创建专用集群订单
    @inlinable
    public func createDedicatedClusterOrder(_ input: CreateDedicatedClusterOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterOrderResponse> {
        self.client.execute(action: "CreateDedicatedClusterOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专用集群订单
    @inlinable
    public func createDedicatedClusterOrder(_ input: CreateDedicatedClusterOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterOrderResponse {
        try await self.client.execute(action: "CreateDedicatedClusterOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建专用集群订单
    @inlinable
    public func createDedicatedClusterOrder(dedicatedClusterId: String, dedicatedClusterTypes: [DedicatedClusterTypeInfo]? = nil, cosInfo: CosInfo? = nil, cbsInfo: CbsInfo? = nil, purchaseSource: String? = nil, dedicatedClusterOrderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDedicatedClusterOrderResponse> {
        let input = CreateDedicatedClusterOrderRequest(dedicatedClusterId: dedicatedClusterId, dedicatedClusterTypes: dedicatedClusterTypes, cosInfo: cosInfo, cbsInfo: cbsInfo, purchaseSource: purchaseSource, dedicatedClusterOrderId: dedicatedClusterOrderId)
        return self.client.execute(action: "CreateDedicatedClusterOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专用集群订单
    @inlinable
    public func createDedicatedClusterOrder(dedicatedClusterId: String, dedicatedClusterTypes: [DedicatedClusterTypeInfo]? = nil, cosInfo: CosInfo? = nil, cbsInfo: CbsInfo? = nil, purchaseSource: String? = nil, dedicatedClusterOrderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedClusterOrderResponse {
        let input = CreateDedicatedClusterOrderRequest(dedicatedClusterId: dedicatedClusterId, dedicatedClusterTypes: dedicatedClusterTypes, cosInfo: cosInfo, cbsInfo: cbsInfo, purchaseSource: purchaseSource, dedicatedClusterOrderId: dedicatedClusterOrderId)
        return try await self.client.execute(action: "CreateDedicatedClusterOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
