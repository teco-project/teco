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

extension Cvm {
    /// DeleteKeyPairs请求参数结构体
    public struct DeleteKeyPairsRequest: TCRequestModel {
        /// 一个或多个待操作的密钥对ID。每次请求批量密钥对的上限为100。<br>可以通过以下方式获取可用的密钥ID：<br><li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥ID。<br><li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) ，取返回信息中的 `KeyId` 获取密钥对ID。
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
    /// 本接口 (DeleteKeyPairs) 用于删除已在腾讯云托管的密钥对。
    ///
    /// * 可以同时删除多个密钥对。
    /// * 不能删除已被实例或镜像引用的密钥对，所以需要独立判断是否所有密钥对都被成功删除。
    @inlinable @discardableResult
    public func deleteKeyPairs(_ input: DeleteKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKeyPairsResponse> {
        self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除密钥对
    ///
    /// 本接口 (DeleteKeyPairs) 用于删除已在腾讯云托管的密钥对。
    ///
    /// * 可以同时删除多个密钥对。
    /// * 不能删除已被实例或镜像引用的密钥对，所以需要独立判断是否所有密钥对都被成功删除。
    @inlinable @discardableResult
    public func deleteKeyPairs(_ input: DeleteKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteKeyPairsResponse {
        try await self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除密钥对
    ///
    /// 本接口 (DeleteKeyPairs) 用于删除已在腾讯云托管的密钥对。
    ///
    /// * 可以同时删除多个密钥对。
    /// * 不能删除已被实例或镜像引用的密钥对，所以需要独立判断是否所有密钥对都被成功删除。
    @inlinable @discardableResult
    public func deleteKeyPairs(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKeyPairsResponse> {
        let input = DeleteKeyPairsRequest(keyIds: keyIds)
        return self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除密钥对
    ///
    /// 本接口 (DeleteKeyPairs) 用于删除已在腾讯云托管的密钥对。
    ///
    /// * 可以同时删除多个密钥对。
    /// * 不能删除已被实例或镜像引用的密钥对，所以需要独立判断是否所有密钥对都被成功删除。
    @inlinable @discardableResult
    public func deleteKeyPairs(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteKeyPairsResponse {
        let input = DeleteKeyPairsRequest(keyIds: keyIds)
        return try await self.client.execute(action: "DeleteKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
