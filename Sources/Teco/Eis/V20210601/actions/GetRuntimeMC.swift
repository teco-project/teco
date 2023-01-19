//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Eis {
    /// GetRuntimeMC请求参数结构体
    public struct GetRuntimeMCRequest: TCRequestModel {
        /// 环境id
        public let runtimeId: Int64

        /// 环境地域
        public let zone: String

        /// 环境运行类型：0:运行时类型、1:api类型
        public let runtimeClass: Int64?

        public init(runtimeId: Int64, zone: String, runtimeClass: Int64? = nil) {
            self.runtimeId = runtimeId
            self.zone = zone
            self.runtimeClass = runtimeClass
        }

        enum CodingKeys: String, CodingKey {
            case runtimeId = "RuntimeId"
            case zone = "Zone"
            case runtimeClass = "RuntimeClass"
        }
    }

    /// GetRuntimeMC返回参数结构体
    public struct GetRuntimeMCResponse: TCResponseModel {
        /// 运行时详情
        public let runtime: RuntimeMC

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case runtime = "Runtime"
            case requestId = "RequestId"
        }
    }

    /// 获取运行时详情
    @inlinable
    public func getRuntimeMC(_ input: GetRuntimeMCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuntimeMCResponse> {
        self.client.execute(action: "GetRuntimeMC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取运行时详情
    @inlinable
    public func getRuntimeMC(_ input: GetRuntimeMCRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuntimeMCResponse {
        try await self.client.execute(action: "GetRuntimeMC", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取运行时详情
    @inlinable
    public func getRuntimeMC(runtimeId: Int64, zone: String, runtimeClass: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRuntimeMCResponse> {
        self.getRuntimeMC(GetRuntimeMCRequest(runtimeId: runtimeId, zone: zone, runtimeClass: runtimeClass), region: region, logger: logger, on: eventLoop)
    }

    /// 获取运行时详情
    @inlinable
    public func getRuntimeMC(runtimeId: Int64, zone: String, runtimeClass: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuntimeMCResponse {
        try await self.getRuntimeMC(GetRuntimeMCRequest(runtimeId: runtimeId, zone: zone, runtimeClass: runtimeClass), region: region, logger: logger, on: eventLoop)
    }
}
