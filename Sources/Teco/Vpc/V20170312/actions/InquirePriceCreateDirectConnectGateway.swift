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

extension Vpc {
    /// InquirePriceCreateDirectConnectGateway请求参数结构体
    public struct InquirePriceCreateDirectConnectGatewayRequest: TCRequestModel {
        public init() {
        }
    }

    /// InquirePriceCreateDirectConnectGateway返回参数结构体
    public struct InquirePriceCreateDirectConnectGatewayResponse: TCResponseModel {
        /// 专线网关标准接入费用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCost: Int64?

        /// 专线网关真实接入费用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realTotalCost: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCost = "TotalCost"
            case realTotalCost = "RealTotalCost"
            case requestId = "RequestId"
        }
    }

    /// 创建专线网关询价
    ///
    /// 本接口（DescribePriceCreateDirectConnectGateway）用于创建专线网关询价。
    @inlinable
    public func inquirePriceCreateDirectConnectGateway(_ input: InquirePriceCreateDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceCreateDirectConnectGatewayResponse> {
        self.client.execute(action: "InquirePriceCreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专线网关询价
    ///
    /// 本接口（DescribePriceCreateDirectConnectGateway）用于创建专线网关询价。
    @inlinable
    public func inquirePriceCreateDirectConnectGateway(_ input: InquirePriceCreateDirectConnectGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateDirectConnectGatewayResponse {
        try await self.client.execute(action: "InquirePriceCreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建专线网关询价
    ///
    /// 本接口（DescribePriceCreateDirectConnectGateway）用于创建专线网关询价。
    @inlinable
    public func inquirePriceCreateDirectConnectGateway(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceCreateDirectConnectGatewayResponse> {
        let input = InquirePriceCreateDirectConnectGatewayRequest()
        return self.client.execute(action: "InquirePriceCreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建专线网关询价
    ///
    /// 本接口（DescribePriceCreateDirectConnectGateway）用于创建专线网关询价。
    @inlinable
    public func inquirePriceCreateDirectConnectGateway(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateDirectConnectGatewayResponse {
        let input = InquirePriceCreateDirectConnectGatewayRequest()
        return try await self.client.execute(action: "InquirePriceCreateDirectConnectGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
