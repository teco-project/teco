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

extension Cws {
    /// CreateVulsMisinformation请求参数结构体
    public struct CreateVulsMisinformationRequest: TCRequestModel {
        /// 漏洞ID列表
        public let vulIds: [UInt64]

        public init(vulIds: [UInt64]) {
            self.vulIds = vulIds
        }

        enum CodingKeys: String, CodingKey {
            case vulIds = "VulIds"
        }
    }

    /// CreateVulsMisinformation返回参数结构体
    public struct CreateVulsMisinformationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增漏洞误报信息
    ///
    /// 本接口（CreateVulsMisinformation）可以用于新增一个或多个漏洞误报信息。
    @inlinable @discardableResult
    public func createVulsMisinformation(_ input: CreateVulsMisinformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulsMisinformationResponse> {
        self.client.execute(action: "CreateVulsMisinformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增漏洞误报信息
    ///
    /// 本接口（CreateVulsMisinformation）可以用于新增一个或多个漏洞误报信息。
    @inlinable @discardableResult
    public func createVulsMisinformation(_ input: CreateVulsMisinformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulsMisinformationResponse {
        try await self.client.execute(action: "CreateVulsMisinformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增漏洞误报信息
    ///
    /// 本接口（CreateVulsMisinformation）可以用于新增一个或多个漏洞误报信息。
    @inlinable @discardableResult
    public func createVulsMisinformation(vulIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulsMisinformationResponse> {
        self.createVulsMisinformation(.init(vulIds: vulIds), region: region, logger: logger, on: eventLoop)
    }

    /// 新增漏洞误报信息
    ///
    /// 本接口（CreateVulsMisinformation）可以用于新增一个或多个漏洞误报信息。
    @inlinable @discardableResult
    public func createVulsMisinformation(vulIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulsMisinformationResponse {
        try await self.createVulsMisinformation(.init(vulIds: vulIds), region: region, logger: logger, on: eventLoop)
    }
}
