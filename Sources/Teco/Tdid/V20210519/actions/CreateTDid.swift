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

extension Tdid {
    /// CreateTDid请求参数结构体
    public struct CreateTDidRequest: TCRequestModel {
        /// 群组ID
        public let groupId: UInt64

        /// 网络ID
        public let clusterId: String

        /// 部署机构为1，否则为0
        public let relegation: UInt64

        public init(groupId: UInt64, clusterId: String, relegation: UInt64) {
            self.groupId = groupId
            self.clusterId = clusterId
            self.relegation = relegation
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case clusterId = "ClusterId"
            case relegation = "Relegation"
        }
    }

    /// CreateTDid返回参数结构体
    public struct CreateTDidResponse: TCResponseModel {
        /// TDID
        public let did: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case did = "Did"
            case requestId = "RequestId"
        }
    }

    /// 创建机构DID
    @inlinable
    public func createTDid(_ input: CreateTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidResponse> {
        self.client.execute(action: "CreateTDid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建机构DID
    @inlinable
    public func createTDid(_ input: CreateTDidRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidResponse {
        try await self.client.execute(action: "CreateTDid", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建机构DID
    @inlinable
    public func createTDid(groupId: UInt64, clusterId: String, relegation: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidResponse> {
        self.createTDid(CreateTDidRequest(groupId: groupId, clusterId: clusterId, relegation: relegation), region: region, logger: logger, on: eventLoop)
    }

    /// 创建机构DID
    @inlinable
    public func createTDid(groupId: UInt64, clusterId: String, relegation: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidResponse {
        try await self.createTDid(CreateTDidRequest(groupId: groupId, clusterId: clusterId, relegation: relegation), region: region, logger: logger, on: eventLoop)
    }
}
