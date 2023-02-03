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

extension Bma {
    /// CreateCRTort请求参数结构体
    public struct CreateCRTortRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 侵权网址
        public let tortURL: String

        /// 侵权平台
        public let tortPlat: String?

        /// 侵权标题
        public let tortTitle: String?

        public init(workId: Int64, tortURL: String, tortPlat: String? = nil, tortTitle: String? = nil) {
            self.workId = workId
            self.tortURL = tortURL
            self.tortPlat = tortPlat
            self.tortTitle = tortTitle
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case tortURL = "TortURL"
            case tortPlat = "TortPlat"
            case tortTitle = "TortTitle"
        }
    }

    /// CreateCRTort返回参数结构体
    public struct CreateCRTortResponse: TCResponseModel {
        /// 作品ID
        public let workId: Int64

        /// 侵权ID
        public let tortId: Int64

        /// 侵权标题
        public let tortTitle: String

        /// 侵权平台
        public let tortPlat: String

        /// 侵权网址
        public let tortURL: String

        /// 侵权域名
        public let tortDomain: String

        /// 侵权主体
        public let tortBodyName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case tortId = "TortId"
            case tortTitle = "TortTitle"
            case tortPlat = "TortPlat"
            case tortURL = "TortURL"
            case tortDomain = "TortDomain"
            case tortBodyName = "TortBodyName"
            case requestId = "RequestId"
        }
    }

    /// 举报侵权链接
    @inlinable
    public func createCRTort(_ input: CreateCRTortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRTortResponse> {
        self.client.execute(action: "CreateCRTort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 举报侵权链接
    @inlinable
    public func createCRTort(_ input: CreateCRTortRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRTortResponse {
        try await self.client.execute(action: "CreateCRTort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 举报侵权链接
    @inlinable
    public func createCRTort(workId: Int64, tortURL: String, tortPlat: String? = nil, tortTitle: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRTortResponse> {
        let input = CreateCRTortRequest(workId: workId, tortURL: tortURL, tortPlat: tortPlat, tortTitle: tortTitle)
        return self.client.execute(action: "CreateCRTort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 举报侵权链接
    @inlinable
    public func createCRTort(workId: Int64, tortURL: String, tortPlat: String? = nil, tortTitle: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRTortResponse {
        let input = CreateCRTortRequest(workId: workId, tortURL: tortURL, tortPlat: tortPlat, tortTitle: tortTitle)
        return try await self.client.execute(action: "CreateCRTort", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
