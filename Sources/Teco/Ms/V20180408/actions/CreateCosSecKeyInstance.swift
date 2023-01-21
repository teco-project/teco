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

extension Ms {
    /// CreateCosSecKeyInstance请求参数结构体
    public struct CreateCosSecKeyInstanceRequest: TCRequestModel {
        /// 地域信息，例如广州：ap-guangzhou，上海：ap-shanghai，默认为广州。
        public let cosRegion: String?

        /// 密钥有效时间，默认为1小时。
        public let duration: UInt64?

        public init(cosRegion: String? = nil, duration: UInt64? = nil) {
            self.cosRegion = cosRegion
            self.duration = duration
        }

        enum CodingKeys: String, CodingKey {
            case cosRegion = "CosRegion"
            case duration = "Duration"
        }
    }

    /// CreateCosSecKeyInstance返回参数结构体
    public struct CreateCosSecKeyInstanceResponse: TCResponseModel {
        /// COS密钥对应的AppId
        public let cosAppid: UInt64

        /// COS密钥对应的存储桶名
        public let cosBucket: String

        /// 存储桶对应的地域
        public let cosRegion: String

        /// 密钥过期时间
        public let expireTime: UInt64

        /// 密钥ID信息
        public let cosId: String

        /// 密钥KEY信息
        public let cosKey: String

        /// 密钥TOCKEN信息
        public let cosTocken: String

        /// 密钥可访问的文件前缀人。例如：CosPrefix=test/123/666，则该密钥只能操作test/123/666为前缀的文件，例如test/123/666/1.txt
        public let cosPrefix: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cosAppid = "CosAppid"
            case cosBucket = "CosBucket"
            case cosRegion = "CosRegion"
            case expireTime = "ExpireTime"
            case cosId = "CosId"
            case cosKey = "CosKey"
            case cosTocken = "CosTocken"
            case cosPrefix = "CosPrefix"
            case requestId = "RequestId"
        }
    }

    /// 获取云COS临时密钥
    ///
    /// 获取云COS文件存储临时密钥，密钥仅限于临时上传文件，有访问限制和时效性。
    @inlinable
    public func createCosSecKeyInstance(_ input: CreateCosSecKeyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosSecKeyInstanceResponse> {
        self.client.execute(action: "CreateCosSecKeyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云COS临时密钥
    ///
    /// 获取云COS文件存储临时密钥，密钥仅限于临时上传文件，有访问限制和时效性。
    @inlinable
    public func createCosSecKeyInstance(_ input: CreateCosSecKeyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosSecKeyInstanceResponse {
        try await self.client.execute(action: "CreateCosSecKeyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云COS临时密钥
    ///
    /// 获取云COS文件存储临时密钥，密钥仅限于临时上传文件，有访问限制和时效性。
    @inlinable
    public func createCosSecKeyInstance(cosRegion: String? = nil, duration: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCosSecKeyInstanceResponse> {
        self.createCosSecKeyInstance(CreateCosSecKeyInstanceRequest(cosRegion: cosRegion, duration: duration), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云COS临时密钥
    ///
    /// 获取云COS文件存储临时密钥，密钥仅限于临时上传文件，有访问限制和时效性。
    @inlinable
    public func createCosSecKeyInstance(cosRegion: String? = nil, duration: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCosSecKeyInstanceResponse {
        try await self.createCosSecKeyInstance(CreateCosSecKeyInstanceRequest(cosRegion: cosRegion, duration: duration), region: region, logger: logger, on: eventLoop)
    }
}
