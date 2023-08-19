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

extension Tcr {
    /// ValidateNamespaceExistPersonal请求参数结构体
    public struct ValidateNamespaceExistPersonalRequest: TCRequest {
        /// 命名空间名称
        public let namespace: String

        public init(namespace: String) {
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
        }
    }

    /// ValidateNamespaceExistPersonal返回参数结构体
    public struct ValidateNamespaceExistPersonalResponse: TCResponse {
        /// 验证命名空间是否存在返回信息
        public let data: NamespaceIsExistsResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 验证个人版命名空间是否存在
    ///
    /// 查询个人版用户命名空间是否存在
    @inlinable
    public func validateNamespaceExistPersonal(_ input: ValidateNamespaceExistPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidateNamespaceExistPersonalResponse> {
        self.client.execute(action: "ValidateNamespaceExistPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证个人版命名空间是否存在
    ///
    /// 查询个人版用户命名空间是否存在
    @inlinable
    public func validateNamespaceExistPersonal(_ input: ValidateNamespaceExistPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateNamespaceExistPersonalResponse {
        try await self.client.execute(action: "ValidateNamespaceExistPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证个人版命名空间是否存在
    ///
    /// 查询个人版用户命名空间是否存在
    @inlinable
    public func validateNamespaceExistPersonal(namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidateNamespaceExistPersonalResponse> {
        self.validateNamespaceExistPersonal(.init(namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 验证个人版命名空间是否存在
    ///
    /// 查询个人版用户命名空间是否存在
    @inlinable
    public func validateNamespaceExistPersonal(namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateNamespaceExistPersonalResponse {
        try await self.validateNamespaceExistPersonal(.init(namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
