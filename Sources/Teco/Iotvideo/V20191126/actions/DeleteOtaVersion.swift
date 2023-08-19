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

extension Iotvideo {
    /// DeleteOtaVersion请求参数结构体
    public struct DeleteOtaVersionRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        public let otaVersion: String

        /// 操作人
        public let `operator`: String?

        public init(productId: String, otaVersion: String, operator: String? = nil) {
            self.productId = productId
            self.otaVersion = otaVersion
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case `operator` = "Operator"
        }
    }

    /// DeleteOtaVersion返回参数结构体
    public struct DeleteOtaVersionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除固件版本信息
    ///
    /// 本接口（DeleteOtaVersion）用于删除固件版本信息。
    @inlinable @discardableResult
    public func deleteOtaVersion(_ input: DeleteOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOtaVersionResponse> {
        self.client.execute(action: "DeleteOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除固件版本信息
    ///
    /// 本接口（DeleteOtaVersion）用于删除固件版本信息。
    @inlinable @discardableResult
    public func deleteOtaVersion(_ input: DeleteOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOtaVersionResponse {
        try await self.client.execute(action: "DeleteOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除固件版本信息
    ///
    /// 本接口（DeleteOtaVersion）用于删除固件版本信息。
    @inlinable @discardableResult
    public func deleteOtaVersion(productId: String, otaVersion: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOtaVersionResponse> {
        self.deleteOtaVersion(.init(productId: productId, otaVersion: otaVersion, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 删除固件版本信息
    ///
    /// 本接口（DeleteOtaVersion）用于删除固件版本信息。
    @inlinable @discardableResult
    public func deleteOtaVersion(productId: String, otaVersion: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOtaVersionResponse {
        try await self.deleteOtaVersion(.init(productId: productId, otaVersion: otaVersion, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
