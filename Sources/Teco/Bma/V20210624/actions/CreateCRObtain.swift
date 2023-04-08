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

extension Bma {
    /// CreateCRObtain请求参数结构体
    public struct CreateCRObtainRequest: TCRequestModel {
        /// 已存证的作品ID
        public let workId: Int64

        /// 侵权链接
        public let tortUrl: String

        /// 取证类型 1-网页取证 2-过程取证
        public let obtainType: Int64

        /// 侵权标题
        public let workTitle: String?

        /// 侵权平台
        public let tortPlat: String?

        /// 过程取证的取证时长 6-300分钟
        public let obtainDuration: Int64?

        /// 取证回调地址
        public let obtainUrl: String?

        /// xxx
        public let workCategory: String?

        /// xxx
        public let workType: String?

        public init(workId: Int64, tortUrl: String, obtainType: Int64, workTitle: String? = nil, tortPlat: String? = nil, obtainDuration: Int64? = nil, obtainUrl: String? = nil, workCategory: String? = nil, workType: String? = nil) {
            self.workId = workId
            self.tortUrl = tortUrl
            self.obtainType = obtainType
            self.workTitle = workTitle
            self.tortPlat = tortPlat
            self.obtainDuration = obtainDuration
            self.obtainUrl = obtainUrl
            self.workCategory = workCategory
            self.workType = workType
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case tortUrl = "TortUrl"
            case obtainType = "ObtainType"
            case workTitle = "WorkTitle"
            case tortPlat = "TortPlat"
            case obtainDuration = "ObtainDuration"
            case obtainUrl = "ObtainUrl"
            case workCategory = "WorkCategory"
            case workType = "WorkType"
        }
    }

    /// CreateCRObtain返回参数结构体
    public struct CreateCRObtainResponse: TCResponseModel {
        /// 侵权ID
        public let tortId: Int64

        /// xxx
        public let tortNum: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
            case tortNum = "TortNum"
            case requestId = "RequestId"
        }
    }

    /// 新建取证
    ///
    /// 版权保护-新建取证接口
    @inlinable
    public func createCRObtain(_ input: CreateCRObtainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRObtainResponse> {
        self.client.execute(action: "CreateCRObtain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建取证
    ///
    /// 版权保护-新建取证接口
    @inlinable
    public func createCRObtain(_ input: CreateCRObtainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRObtainResponse {
        try await self.client.execute(action: "CreateCRObtain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建取证
    ///
    /// 版权保护-新建取证接口
    @inlinable
    public func createCRObtain(workId: Int64, tortUrl: String, obtainType: Int64, workTitle: String? = nil, tortPlat: String? = nil, obtainDuration: Int64? = nil, obtainUrl: String? = nil, workCategory: String? = nil, workType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRObtainResponse> {
        self.createCRObtain(.init(workId: workId, tortUrl: tortUrl, obtainType: obtainType, workTitle: workTitle, tortPlat: tortPlat, obtainDuration: obtainDuration, obtainUrl: obtainUrl, workCategory: workCategory, workType: workType), region: region, logger: logger, on: eventLoop)
    }

    /// 新建取证
    ///
    /// 版权保护-新建取证接口
    @inlinable
    public func createCRObtain(workId: Int64, tortUrl: String, obtainType: Int64, workTitle: String? = nil, tortPlat: String? = nil, obtainDuration: Int64? = nil, obtainUrl: String? = nil, workCategory: String? = nil, workType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRObtainResponse {
        try await self.createCRObtain(.init(workId: workId, tortUrl: tortUrl, obtainType: obtainType, workTitle: workTitle, tortPlat: tortPlat, obtainDuration: obtainDuration, obtainUrl: obtainUrl, workCategory: workCategory, workType: workType), region: region, logger: logger, on: eventLoop)
    }
}
