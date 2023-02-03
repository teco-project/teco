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
    /// ModifyLocalGateway请求参数结构体
    public struct ModifyLocalGatewayRequest: TCRequestModel {
        /// 本地网关名称
        public let localGatewayName: String

        /// CDC实例ID
        public let cdcId: String

        /// 本地网关实例ID
        public let localGatewayId: String

        /// VPC实例ID
        public let vpcId: String?

        public init(localGatewayName: String, cdcId: String, localGatewayId: String, vpcId: String? = nil) {
            self.localGatewayName = localGatewayName
            self.cdcId = cdcId
            self.localGatewayId = localGatewayId
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case localGatewayName = "LocalGatewayName"
            case cdcId = "CdcId"
            case localGatewayId = "LocalGatewayId"
            case vpcId = "VpcId"
        }
    }

    /// ModifyLocalGateway返回参数结构体
    public struct ModifyLocalGatewayResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改本地网关
    ///
    /// 该接口用于修改CDC的本地网关。
    @inlinable @discardableResult
    public func modifyLocalGateway(_ input: ModifyLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLocalGatewayResponse> {
        self.client.execute(action: "ModifyLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改本地网关
    ///
    /// 该接口用于修改CDC的本地网关。
    @inlinable @discardableResult
    public func modifyLocalGateway(_ input: ModifyLocalGatewayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLocalGatewayResponse {
        try await self.client.execute(action: "ModifyLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改本地网关
    ///
    /// 该接口用于修改CDC的本地网关。
    @inlinable @discardableResult
    public func modifyLocalGateway(localGatewayName: String, cdcId: String, localGatewayId: String, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLocalGatewayResponse> {
        let input = ModifyLocalGatewayRequest(localGatewayName: localGatewayName, cdcId: cdcId, localGatewayId: localGatewayId, vpcId: vpcId)
        return self.client.execute(action: "ModifyLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改本地网关
    ///
    /// 该接口用于修改CDC的本地网关。
    @inlinable @discardableResult
    public func modifyLocalGateway(localGatewayName: String, cdcId: String, localGatewayId: String, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLocalGatewayResponse {
        let input = ModifyLocalGatewayRequest(localGatewayName: localGatewayName, cdcId: cdcId, localGatewayId: localGatewayId, vpcId: vpcId)
        return try await self.client.execute(action: "ModifyLocalGateway", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
