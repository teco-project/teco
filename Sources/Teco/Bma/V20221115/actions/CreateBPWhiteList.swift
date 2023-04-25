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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Bma {
    /// CreateBPWhiteList请求参数结构体
    public struct CreateBPWhiteListRequest: TCRequestModel {
        /// 企业Id
        public let companyId: Int64

        /// 白名单类型：0-网站 1-应用 2-公众号 3-小程
        public let whiteListType: Int64

        /// 白名单名称
        public let whiteLists: [String]

        public init(companyId: Int64, whiteListType: Int64, whiteLists: [String]) {
            self.companyId = companyId
            self.whiteListType = whiteListType
            self.whiteLists = whiteLists
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case whiteListType = "WhiteListType"
            case whiteLists = "WhiteLists"
        }
    }

    /// CreateBPWhiteList返回参数结构体
    public struct CreateBPWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加白名单
    @inlinable @discardableResult
    public func createBPWhiteList(_ input: CreateBPWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPWhiteListResponse> {
        self.client.execute(action: "CreateBPWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加白名单
    @inlinable @discardableResult
    public func createBPWhiteList(_ input: CreateBPWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPWhiteListResponse {
        try await self.client.execute(action: "CreateBPWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加白名单
    @inlinable @discardableResult
    public func createBPWhiteList(companyId: Int64, whiteListType: Int64, whiteLists: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPWhiteListResponse> {
        self.createBPWhiteList(.init(companyId: companyId, whiteListType: whiteListType, whiteLists: whiteLists), region: region, logger: logger, on: eventLoop)
    }

    /// 添加白名单
    @inlinable @discardableResult
    public func createBPWhiteList(companyId: Int64, whiteListType: Int64, whiteLists: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPWhiteListResponse {
        try await self.createBPWhiteList(.init(companyId: companyId, whiteListType: whiteListType, whiteLists: whiteLists), region: region, logger: logger, on: eventLoop)
    }
}
