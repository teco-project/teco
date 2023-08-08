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

extension Cynosdb {
    /// RefundResourcePackage请求参数结构体
    public struct RefundResourcePackageRequest: TCRequestModel {
        /// 资源包唯一ID
        public let packageId: String

        public init(packageId: String) {
            self.packageId = packageId
        }

        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
        }
    }

    /// RefundResourcePackage返回参数结构体
    public struct RefundResourcePackageResponse: TCResponseModel {
        /// 每个物品对应一个dealName，业务需要根据dealName保证发货接口幂等
        public let dealNames: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
            case requestId = "RequestId"
        }
    }

    /// 退款资源包
    @inlinable
    public func refundResourcePackage(_ input: RefundResourcePackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundResourcePackageResponse> {
        self.client.execute(action: "RefundResourcePackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退款资源包
    @inlinable
    public func refundResourcePackage(_ input: RefundResourcePackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundResourcePackageResponse {
        try await self.client.execute(action: "RefundResourcePackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退款资源包
    @inlinable
    public func refundResourcePackage(packageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundResourcePackageResponse> {
        self.refundResourcePackage(.init(packageId: packageId), region: region, logger: logger, on: eventLoop)
    }

    /// 退款资源包
    @inlinable
    public func refundResourcePackage(packageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundResourcePackageResponse {
        try await self.refundResourcePackage(.init(packageId: packageId), region: region, logger: logger, on: eventLoop)
    }
}