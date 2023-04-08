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

import TecoCore

extension Iotvideo {
    /// DisableOtaVersion请求参数结构体
    public struct DisableOtaVersionRequest: TCRequestModel {
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

    /// DisableOtaVersion返回参数结构体
    public struct DisableOtaVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用固件版本
    ///
    /// 本接口（DisableOtaVersion）用于禁用固件版本。
    @inlinable @discardableResult
    public func disableOtaVersion(_ input: DisableOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableOtaVersionResponse> {
        self.client.execute(action: "DisableOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用固件版本
    ///
    /// 本接口（DisableOtaVersion）用于禁用固件版本。
    @inlinable @discardableResult
    public func disableOtaVersion(_ input: DisableOtaVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableOtaVersionResponse {
        try await self.client.execute(action: "DisableOtaVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用固件版本
    ///
    /// 本接口（DisableOtaVersion）用于禁用固件版本。
    @inlinable @discardableResult
    public func disableOtaVersion(productId: String, otaVersion: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableOtaVersionResponse> {
        self.disableOtaVersion(.init(productId: productId, otaVersion: otaVersion, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用固件版本
    ///
    /// 本接口（DisableOtaVersion）用于禁用固件版本。
    @inlinable @discardableResult
    public func disableOtaVersion(productId: String, otaVersion: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableOtaVersionResponse {
        try await self.disableOtaVersion(.init(productId: productId, otaVersion: otaVersion, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
