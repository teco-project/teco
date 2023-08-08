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

extension Cfs {
    /// DescribeBucketList请求参数结构体
    public struct DescribeBucketListRequest: TCRequestModel {
        /// 数据源服务商。COS: 腾讯云COS，OSS: 阿里云OSS，OBS:华为云OBS
        public let srcService: String

        /// 数据源账号的SecretId
        public let srcSecretId: String

        /// 数据源账号的SecretKey
        public let srcSecretKey: String

        public init(srcService: String, srcSecretId: String, srcSecretKey: String) {
            self.srcService = srcService
            self.srcSecretId = srcSecretId
            self.srcSecretKey = srcSecretKey
        }

        enum CodingKeys: String, CodingKey {
            case srcService = "SrcService"
            case srcSecretId = "SrcSecretId"
            case srcSecretKey = "SrcSecretKey"
        }
    }

    /// DescribeBucketList返回参数结构体
    public struct DescribeBucketListResponse: TCResponseModel {
        /// 桶的数量
        public let totalCount: Int64

        /// 桶列表
        public let bucketList: [BucketInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bucketList = "BucketList"
            case requestId = "RequestId"
        }
    }

    /// 获取对象存储桶列表
    ///
    /// 用于获取数据源桶列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeBucketList(_ input: DescribeBucketListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBucketListResponse> {
        self.client.execute(action: "DescribeBucketList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取对象存储桶列表
    ///
    /// 用于获取数据源桶列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeBucketList(_ input: DescribeBucketListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBucketListResponse {
        try await self.client.execute(action: "DescribeBucketList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取对象存储桶列表
    ///
    /// 用于获取数据源桶列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeBucketList(srcService: String, srcSecretId: String, srcSecretKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBucketListResponse> {
        self.describeBucketList(.init(srcService: srcService, srcSecretId: srcSecretId, srcSecretKey: srcSecretKey), region: region, logger: logger, on: eventLoop)
    }

    /// 获取对象存储桶列表
    ///
    /// 用于获取数据源桶列表。
    /// 此接口需提交工单，开启白名单之后才能使用。
    @inlinable
    public func describeBucketList(srcService: String, srcSecretId: String, srcSecretKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBucketListResponse {
        try await self.describeBucketList(.init(srcService: srcService, srcSecretId: srcSecretId, srcSecretKey: srcSecretKey), region: region, logger: logger, on: eventLoop)
    }
}