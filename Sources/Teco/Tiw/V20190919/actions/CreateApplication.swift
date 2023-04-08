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

extension Tiw {
    /// CreateApplication请求参数结构体
    public struct CreateApplicationRequest: TCRequestModel {
        /// 应用SdkAppId
        public let sdkAppId: Int64

        /// App名字
        public let appName: String?

        /// 创建IM应用需要的SKey
        public let sKey: String?

        /// 创建IM应用需要的TinyId
        public let tinyId: String?

        /// 需要绑定的标签列表
        public let tagList: [Tag]?

        public init(sdkAppId: Int64, appName: String? = nil, sKey: String? = nil, tinyId: String? = nil, tagList: [Tag]? = nil) {
            self.sdkAppId = sdkAppId
            self.appName = appName
            self.sKey = sKey
            self.tinyId = tinyId
            self.tagList = tagList
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case appName = "AppName"
            case sKey = "SKey"
            case tinyId = "TinyId"
            case tagList = "TagList"
        }
    }

    /// CreateApplication返回参数结构体
    public struct CreateApplicationResponse: TCResponseModel {
        /// 客户的AppId
        public let appId: Int64

        /// App名字
        public let appName: String

        /// 应用SdkAppId
        public let sdkAppId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case appName = "AppName"
            case sdkAppId = "SdkAppId"
            case requestId = "RequestId"
        }
    }

    /// 创建白板应用
    @inlinable
    public func createApplication(_ input: CreateApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        self.client.execute(action: "CreateApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建白板应用
    @inlinable
    public func createApplication(_ input: CreateApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        try await self.client.execute(action: "CreateApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建白板应用
    @inlinable
    public func createApplication(sdkAppId: Int64, appName: String? = nil, sKey: String? = nil, tinyId: String? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        self.createApplication(.init(sdkAppId: sdkAppId, appName: appName, sKey: sKey, tinyId: tinyId, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建白板应用
    @inlinable
    public func createApplication(sdkAppId: Int64, appName: String? = nil, sKey: String? = nil, tinyId: String? = nil, tagList: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        try await self.createApplication(.init(sdkAppId: sdkAppId, appName: appName, sKey: sKey, tinyId: tinyId, tagList: tagList), region: region, logger: logger, on: eventLoop)
    }
}
