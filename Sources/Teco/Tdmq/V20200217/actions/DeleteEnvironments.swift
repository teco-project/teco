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

extension Tdmq {
    /// DeleteEnvironments请求参数结构体
    public struct DeleteEnvironmentsRequest: TCRequestModel {
        /// 环境（命名空间）数组，每次最多删除20个。
        public let environmentIds: [String]

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentIds: [String], clusterId: String? = nil) {
            self.environmentIds = environmentIds
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentIds = "EnvironmentIds"
            case clusterId = "ClusterId"
        }
    }

    /// DeleteEnvironments返回参数结构体
    public struct DeleteEnvironmentsResponse: TCResponseModel {
        /// 成功删除的环境（命名空间）数组。
        public let environmentIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case environmentIds = "EnvironmentIds"
            case requestId = "RequestId"
        }
    }

    /// 删除命名空间
    ///
    /// 批量删除租户下的命名空间
    @inlinable
    public func deleteEnvironments(_ input: DeleteEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentsResponse> {
        self.client.execute(action: "DeleteEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    ///
    /// 批量删除租户下的命名空间
    @inlinable
    public func deleteEnvironments(_ input: DeleteEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentsResponse {
        try await self.client.execute(action: "DeleteEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除命名空间
    ///
    /// 批量删除租户下的命名空间
    @inlinable
    public func deleteEnvironments(environmentIds: [String], clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentsResponse> {
        self.deleteEnvironments(DeleteEnvironmentsRequest(environmentIds: environmentIds, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除命名空间
    ///
    /// 批量删除租户下的命名空间
    @inlinable
    public func deleteEnvironments(environmentIds: [String], clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentsResponse {
        try await self.deleteEnvironments(DeleteEnvironmentsRequest(environmentIds: environmentIds, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
