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

extension Scf {
    /// PutReservedConcurrencyConfig请求参数结构体
    public struct PutReservedConcurrencyConfigRequest: TCRequestModel {
        /// 需要设置最大独占配额的函数的名称
        public let functionName: String

        /// 函数最大独占配额，注：函数的最大独占配额内存总和上限：用户总并发内存配额 - 12800
        public let reservedConcurrencyMem: UInt64

        /// 函数所属命名空间，默认为default
        public let namespace: String?

        public init(functionName: String, reservedConcurrencyMem: UInt64, namespace: String? = nil) {
            self.functionName = functionName
            self.reservedConcurrencyMem = reservedConcurrencyMem
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case reservedConcurrencyMem = "ReservedConcurrencyMem"
            case namespace = "Namespace"
        }
    }

    /// PutReservedConcurrencyConfig返回参数结构体
    public struct PutReservedConcurrencyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置最大独占配额
    ///
    /// 设置函数最大独占配额
    @inlinable @discardableResult
    public func putReservedConcurrencyConfig(_ input: PutReservedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutReservedConcurrencyConfigResponse> {
        self.client.execute(action: "PutReservedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置最大独占配额
    ///
    /// 设置函数最大独占配额
    @inlinable @discardableResult
    public func putReservedConcurrencyConfig(_ input: PutReservedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutReservedConcurrencyConfigResponse {
        try await self.client.execute(action: "PutReservedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置最大独占配额
    ///
    /// 设置函数最大独占配额
    @inlinable @discardableResult
    public func putReservedConcurrencyConfig(functionName: String, reservedConcurrencyMem: UInt64, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutReservedConcurrencyConfigResponse> {
        self.putReservedConcurrencyConfig(.init(functionName: functionName, reservedConcurrencyMem: reservedConcurrencyMem, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 设置最大独占配额
    ///
    /// 设置函数最大独占配额
    @inlinable @discardableResult
    public func putReservedConcurrencyConfig(functionName: String, reservedConcurrencyMem: UInt64, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutReservedConcurrencyConfigResponse {
        try await self.putReservedConcurrencyConfig(.init(functionName: functionName, reservedConcurrencyMem: reservedConcurrencyMem, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
