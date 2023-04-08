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

extension Tdid {
    /// CreateTDidByPrivateKey请求参数结构体
    public struct CreateTDidByPrivateKeyRequest: TCRequestModel {
        /// 网络ID
        public let clusterId: String

        /// 群组ID
        public let groupId: UInt64

        /// 私钥
        public let privateKey: String

        public init(clusterId: String, groupId: UInt64, privateKey: String) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.privateKey = privateKey
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case privateKey = "PrivateKey"
        }
    }

    /// CreateTDidByPrivateKey返回参数结构体
    public struct CreateTDidByPrivateKeyResponse: TCResponseModel {
        /// did的具体信息
        public let did: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case did = "Did"
            case requestId = "RequestId"
        }
    }

    /// 新建DID根据私钥生成Tdid
    @inlinable
    public func createTDidByPrivateKey(_ input: CreateTDidByPrivateKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidByPrivateKeyResponse> {
        self.client.execute(action: "CreateTDidByPrivateKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建DID根据私钥生成Tdid
    @inlinable
    public func createTDidByPrivateKey(_ input: CreateTDidByPrivateKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidByPrivateKeyResponse {
        try await self.client.execute(action: "CreateTDidByPrivateKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建DID根据私钥生成Tdid
    @inlinable
    public func createTDidByPrivateKey(clusterId: String, groupId: UInt64, privateKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTDidByPrivateKeyResponse> {
        self.createTDidByPrivateKey(.init(clusterId: clusterId, groupId: groupId, privateKey: privateKey), region: region, logger: logger, on: eventLoop)
    }

    /// 新建DID根据私钥生成Tdid
    @inlinable
    public func createTDidByPrivateKey(clusterId: String, groupId: UInt64, privateKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTDidByPrivateKeyResponse {
        try await self.createTDidByPrivateKey(.init(clusterId: clusterId, groupId: groupId, privateKey: privateKey), region: region, logger: logger, on: eventLoop)
    }
}
