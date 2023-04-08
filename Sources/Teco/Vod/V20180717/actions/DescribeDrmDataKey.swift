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

extension Vod {
    /// DescribeDrmDataKey请求参数结构体
    public struct DescribeDrmDataKeyRequest: TCRequestModel {
        /// 加密后的数据密钥列表，最大支持10个。
        public let edkList: [String]

        /// <b>点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(edkList: [String], subAppId: UInt64? = nil) {
            self.edkList = edkList
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case edkList = "EdkList"
            case subAppId = "SubAppId"
        }
    }

    /// DescribeDrmDataKey返回参数结构体
    public struct DescribeDrmDataKeyResponse: TCResponseModel {
        /// 密钥列表，包含加密的数据密钥。
        public let keyList: [SimpleAesEdkPair]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyList = "KeyList"
            case requestId = "RequestId"
        }
    }

    /// 获取视频解密密钥
    ///
    /// 本 API 是 [旧版本加密](https://cloud.tencent.com/document/product/266/9638) 中 [DescribeDrmDataKey 的 API 2017 接口](https://cloud.tencent.com/document/product/266/9643) 的升级版本。
    ///
    /// 如果您是新接入点播加密的用户，不要使用该 API，请参考 [视频加密综述](https://cloud.tencent.com/document/product/266/45552) 使用推荐的加密方式。
    @inlinable
    public func describeDrmDataKey(_ input: DescribeDrmDataKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrmDataKeyResponse> {
        self.client.execute(action: "DescribeDrmDataKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取视频解密密钥
    ///
    /// 本 API 是 [旧版本加密](https://cloud.tencent.com/document/product/266/9638) 中 [DescribeDrmDataKey 的 API 2017 接口](https://cloud.tencent.com/document/product/266/9643) 的升级版本。
    ///
    /// 如果您是新接入点播加密的用户，不要使用该 API，请参考 [视频加密综述](https://cloud.tencent.com/document/product/266/45552) 使用推荐的加密方式。
    @inlinable
    public func describeDrmDataKey(_ input: DescribeDrmDataKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrmDataKeyResponse {
        try await self.client.execute(action: "DescribeDrmDataKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取视频解密密钥
    ///
    /// 本 API 是 [旧版本加密](https://cloud.tencent.com/document/product/266/9638) 中 [DescribeDrmDataKey 的 API 2017 接口](https://cloud.tencent.com/document/product/266/9643) 的升级版本。
    ///
    /// 如果您是新接入点播加密的用户，不要使用该 API，请参考 [视频加密综述](https://cloud.tencent.com/document/product/266/45552) 使用推荐的加密方式。
    @inlinable
    public func describeDrmDataKey(edkList: [String], subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrmDataKeyResponse> {
        self.describeDrmDataKey(.init(edkList: edkList, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取视频解密密钥
    ///
    /// 本 API 是 [旧版本加密](https://cloud.tencent.com/document/product/266/9638) 中 [DescribeDrmDataKey 的 API 2017 接口](https://cloud.tencent.com/document/product/266/9643) 的升级版本。
    ///
    /// 如果您是新接入点播加密的用户，不要使用该 API，请参考 [视频加密综述](https://cloud.tencent.com/document/product/266/45552) 使用推荐的加密方式。
    @inlinable
    public func describeDrmDataKey(edkList: [String], subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrmDataKeyResponse {
        try await self.describeDrmDataKey(.init(edkList: edkList, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
