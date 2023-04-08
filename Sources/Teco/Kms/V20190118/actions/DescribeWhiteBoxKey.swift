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

extension Kms {
    /// DescribeWhiteBoxKey请求参数结构体
    public struct DescribeWhiteBoxKeyRequest: TCRequestModel {
        /// 白盒密钥的全局唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// DescribeWhiteBoxKey返回参数结构体
    public struct DescribeWhiteBoxKeyResponse: TCResponseModel {
        /// 白盒密钥信息
        public let keyInfo: WhiteboxKeyInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyInfo = "KeyInfo"
            case requestId = "RequestId"
        }
    }

    /// 展示白盒密钥的信息
    @inlinable
    public func describeWhiteBoxKey(_ input: DescribeWhiteBoxKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxKeyResponse> {
        self.client.execute(action: "DescribeWhiteBoxKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示白盒密钥的信息
    @inlinable
    public func describeWhiteBoxKey(_ input: DescribeWhiteBoxKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxKeyResponse {
        try await self.client.execute(action: "DescribeWhiteBoxKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示白盒密钥的信息
    @inlinable
    public func describeWhiteBoxKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteBoxKeyResponse> {
        self.describeWhiteBoxKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 展示白盒密钥的信息
    @inlinable
    public func describeWhiteBoxKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxKeyResponse {
        try await self.describeWhiteBoxKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
