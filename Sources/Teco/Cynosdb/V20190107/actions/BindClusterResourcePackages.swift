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
    /// BindClusterResourcePackages请求参数结构体
    public struct BindClusterResourcePackagesRequest: TCRequestModel {
        /// 资源包唯一ID
        public let packageIds: [String]

        /// 集群ID
        public let clusterId: String

        public init(packageIds: [String], clusterId: String) {
            self.packageIds = packageIds
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case packageIds = "PackageIds"
            case clusterId = "ClusterId"
        }
    }

    /// BindClusterResourcePackages返回参数结构体
    public struct BindClusterResourcePackagesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 为集群绑定资源包
    @inlinable @discardableResult
    public func bindClusterResourcePackages(_ input: BindClusterResourcePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindClusterResourcePackagesResponse> {
        self.client.execute(action: "BindClusterResourcePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 为集群绑定资源包
    @inlinable @discardableResult
    public func bindClusterResourcePackages(_ input: BindClusterResourcePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindClusterResourcePackagesResponse {
        try await self.client.execute(action: "BindClusterResourcePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 为集群绑定资源包
    @inlinable @discardableResult
    public func bindClusterResourcePackages(packageIds: [String], clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindClusterResourcePackagesResponse> {
        self.bindClusterResourcePackages(.init(packageIds: packageIds, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 为集群绑定资源包
    @inlinable @discardableResult
    public func bindClusterResourcePackages(packageIds: [String], clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindClusterResourcePackagesResponse {
        try await self.bindClusterResourcePackages(.init(packageIds: packageIds, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}