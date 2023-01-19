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

extension Tke {
    /// DeleteECMInstances请求参数结构体
    public struct DeleteECMInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterID: String

        /// ecm id集合
        public let ecmIdSet: [String]

        public init(clusterID: String, ecmIdSet: [String]) {
            self.clusterID = clusterID
            self.ecmIdSet = ecmIdSet
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case ecmIdSet = "EcmIdSet"
        }
    }

    /// DeleteECMInstances返回参数结构体
    public struct DeleteECMInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除ECM实例
    @inlinable
    public func deleteECMInstances(_ input: DeleteECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteECMInstancesResponse> {
        self.client.execute(action: "DeleteECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除ECM实例
    @inlinable
    public func deleteECMInstances(_ input: DeleteECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteECMInstancesResponse {
        try await self.client.execute(action: "DeleteECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除ECM实例
    @inlinable
    public func deleteECMInstances(clusterID: String, ecmIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteECMInstancesResponse> {
        self.deleteECMInstances(DeleteECMInstancesRequest(clusterID: clusterID, ecmIdSet: ecmIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除ECM实例
    @inlinable
    public func deleteECMInstances(clusterID: String, ecmIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteECMInstancesResponse {
        try await self.deleteECMInstances(DeleteECMInstancesRequest(clusterID: clusterID, ecmIdSet: ecmIdSet), region: region, logger: logger, on: eventLoop)
    }
}
