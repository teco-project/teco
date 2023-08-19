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

extension Wedata {
    /// DescribeFunctionTypes请求参数结构体
    public struct DescribeFunctionTypesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeFunctionTypes返回参数结构体
    public struct DescribeFunctionTypesResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let types: [FunctionTypeOrKind]?

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case types = "Types"
            case errorMessage = "ErrorMessage"
            case requestId = "RequestId"
        }
    }

    /// 查询函数类型
    @inlinable
    public func describeFunctionTypes(_ input: DescribeFunctionTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFunctionTypesResponse> {
        self.client.execute(action: "DescribeFunctionTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询函数类型
    @inlinable
    public func describeFunctionTypes(_ input: DescribeFunctionTypesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFunctionTypesResponse {
        try await self.client.execute(action: "DescribeFunctionTypes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询函数类型
    @inlinable
    public func describeFunctionTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFunctionTypesResponse> {
        self.describeFunctionTypes(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询函数类型
    @inlinable
    public func describeFunctionTypes(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFunctionTypesResponse {
        try await self.describeFunctionTypes(.init(), region: region, logger: logger, on: eventLoop)
    }
}
