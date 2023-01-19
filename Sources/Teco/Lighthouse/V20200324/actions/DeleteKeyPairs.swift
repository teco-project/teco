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

extension Lighthouse {
    /// DeleteKeyPairs请求参数结构体
    public struct DeleteKeyPairsRequest: TCRequestModel {
        /// 密钥对 ID 列表，每次请求批量密钥对的上限为 10。
        public let keyIds: [String]

        public init(keyIds: [String]) {
            self.keyIds = keyIds
        }

        enum CodingKeys: String, CodingKey {
            case keyIds = "KeyIds"
        }
    }

    /// DeleteKeyPairs返回参数结构体
    public struct DeleteKeyPairsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除密钥对
    ///
    /// 本接口（DeleteKeyPairs）用于删除密钥对。
    @inlinable
    public func deleteKeyPairs(_ input: DeleteKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKeyPairsResponse> {
        self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除密钥对
    ///
    /// 本接口（DeleteKeyPairs）用于删除密钥对。
    @inlinable
    public func deleteKeyPairs(_ input: DeleteKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteKeyPairsResponse {
        try await self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除密钥对
    ///
    /// 本接口（DeleteKeyPairs）用于删除密钥对。
    @inlinable
    public func deleteKeyPairs(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKeyPairsResponse> {
        self.deleteKeyPairs(DeleteKeyPairsRequest(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除密钥对
    ///
    /// 本接口（DeleteKeyPairs）用于删除密钥对。
    @inlinable
    public func deleteKeyPairs(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteKeyPairsResponse {
        try await self.deleteKeyPairs(DeleteKeyPairsRequest(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }
}
