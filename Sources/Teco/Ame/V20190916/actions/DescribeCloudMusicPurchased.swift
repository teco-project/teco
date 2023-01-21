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

extension Ame {
    /// DescribeCloudMusicPurchased请求参数结构体
    public struct DescribeCloudMusicPurchasedRequest: TCRequestModel {
        /// 授权项目Id
        public let authInfoId: String

        public init(authInfoId: String) {
            self.authInfoId = authInfoId
        }

        enum CodingKeys: String, CodingKey {
            case authInfoId = "AuthInfoId"
        }
    }

    /// DescribeCloudMusicPurchased返回参数结构体
    public struct DescribeCloudMusicPurchasedResponse: TCResponseModel {
        /// 云音乐列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicOpenDetail: [MusicOpenDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case musicOpenDetail = "MusicOpenDetail"
            case requestId = "RequestId"
        }
    }

    /// 获取授权项目已购云音乐列表
    ///
    /// 获取授权项目下已购云音乐列表
    @inlinable
    public func describeCloudMusicPurchased(_ input: DescribeCloudMusicPurchasedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudMusicPurchasedResponse> {
        self.client.execute(action: "DescribeCloudMusicPurchased", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取授权项目已购云音乐列表
    ///
    /// 获取授权项目下已购云音乐列表
    @inlinable
    public func describeCloudMusicPurchased(_ input: DescribeCloudMusicPurchasedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudMusicPurchasedResponse {
        try await self.client.execute(action: "DescribeCloudMusicPurchased", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取授权项目已购云音乐列表
    ///
    /// 获取授权项目下已购云音乐列表
    @inlinable
    public func describeCloudMusicPurchased(authInfoId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudMusicPurchasedResponse> {
        self.describeCloudMusicPurchased(DescribeCloudMusicPurchasedRequest(authInfoId: authInfoId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权项目已购云音乐列表
    ///
    /// 获取授权项目下已购云音乐列表
    @inlinable
    public func describeCloudMusicPurchased(authInfoId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudMusicPurchasedResponse {
        try await self.describeCloudMusicPurchased(DescribeCloudMusicPurchasedRequest(authInfoId: authInfoId), region: region, logger: logger, on: eventLoop)
    }
}
