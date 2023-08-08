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

extension Essbasic {
    /// CreateSealByImage请求参数结构体
    public struct CreateSealByImageRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 印章名称，最大长度不超过50字符
        public let sealName: String

        /// 印章图片base64，大小不超过10M（原始图片不超过7.6M）
        public let sealImage: String

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, sealName: String, sealImage: String, operator: UserInfo? = nil) {
            self.agent = agent
            self.sealName = sealName
            self.sealImage = sealImage
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case sealName = "SealName"
            case sealImage = "SealImage"
            case `operator` = "Operator"
        }
    }

    /// CreateSealByImage返回参数结构体
    public struct CreateSealByImageResponse: TCResponseModel {
        /// 印章id
        public let sealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sealId = "SealId"
            case requestId = "RequestId"
        }
    }

    /// 通过图片为子客企业代创建印章
    ///
    /// 通过图片为子客企业代创建印章，图片最大5MB
    @inlinable
    public func createSealByImage(_ input: CreateSealByImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealByImageResponse> {
        self.client.execute(action: "CreateSealByImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过图片为子客企业代创建印章
    ///
    /// 通过图片为子客企业代创建印章，图片最大5MB
    @inlinable
    public func createSealByImage(_ input: CreateSealByImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealByImageResponse {
        try await self.client.execute(action: "CreateSealByImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过图片为子客企业代创建印章
    ///
    /// 通过图片为子客企业代创建印章，图片最大5MB
    @inlinable
    public func createSealByImage(agent: Agent, sealName: String, sealImage: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSealByImageResponse> {
        self.createSealByImage(.init(agent: agent, sealName: sealName, sealImage: sealImage, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 通过图片为子客企业代创建印章
    ///
    /// 通过图片为子客企业代创建印章，图片最大5MB
    @inlinable
    public func createSealByImage(agent: Agent, sealName: String, sealImage: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSealByImageResponse {
        try await self.createSealByImage(.init(agent: agent, sealName: sealName, sealImage: sealImage, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
