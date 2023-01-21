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

extension Scf {
    /// DeleteReservedConcurrencyConfig请求参数结构体
    public struct DeleteReservedConcurrencyConfigRequest: TCRequestModel {
        /// 需要删除最大独占配额的函数的名称
        public let functionName: String

        /// 函数所属命名空间，默认为default
        public let namespace: String?

        public init(functionName: String, namespace: String? = nil) {
            self.functionName = functionName
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case namespace = "Namespace"
        }
    }

    /// DeleteReservedConcurrencyConfig返回参数结构体
    public struct DeleteReservedConcurrencyConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除函数最大独占配额
    ///
    /// 删除函数的最大独占配额配置。
    @inlinable @discardableResult
    public func deleteReservedConcurrencyConfig(_ input: DeleteReservedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReservedConcurrencyConfigResponse> {
        self.client.execute(action: "DeleteReservedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除函数最大独占配额
    ///
    /// 删除函数的最大独占配额配置。
    @inlinable @discardableResult
    public func deleteReservedConcurrencyConfig(_ input: DeleteReservedConcurrencyConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReservedConcurrencyConfigResponse {
        try await self.client.execute(action: "DeleteReservedConcurrencyConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除函数最大独占配额
    ///
    /// 删除函数的最大独占配额配置。
    @inlinable @discardableResult
    public func deleteReservedConcurrencyConfig(functionName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReservedConcurrencyConfigResponse> {
        self.deleteReservedConcurrencyConfig(DeleteReservedConcurrencyConfigRequest(functionName: functionName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 删除函数最大独占配额
    ///
    /// 删除函数的最大独占配额配置。
    @inlinable @discardableResult
    public func deleteReservedConcurrencyConfig(functionName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReservedConcurrencyConfigResponse {
        try await self.deleteReservedConcurrencyConfig(DeleteReservedConcurrencyConfigRequest(functionName: functionName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
