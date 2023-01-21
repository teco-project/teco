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

extension Lcic {
    /// SetAppCustomContent请求参数结构体
    public struct SetAppCustomContentRequest: TCRequestModel {
        /// 自定义内容。
        public let customContent: [AppCustomContent]

        /// 应用ID。
        public let sdkAppId: UInt64

        public init(customContent: [AppCustomContent], sdkAppId: UInt64) {
            self.customContent = customContent
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case customContent = "CustomContent"
            case sdkAppId = "SdkAppId"
        }
    }

    /// SetAppCustomContent返回参数结构体
    public struct SetAppCustomContentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置应用自定义内容
    ///
    /// 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口
    @inlinable @discardableResult
    public func setAppCustomContent(_ input: SetAppCustomContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetAppCustomContentResponse> {
        self.client.execute(action: "SetAppCustomContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置应用自定义内容
    ///
    /// 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口
    @inlinable @discardableResult
    public func setAppCustomContent(_ input: SetAppCustomContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetAppCustomContentResponse {
        try await self.client.execute(action: "SetAppCustomContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置应用自定义内容
    ///
    /// 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口
    @inlinable @discardableResult
    public func setAppCustomContent(customContent: [AppCustomContent], sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetAppCustomContentResponse> {
        self.setAppCustomContent(SetAppCustomContentRequest(customContent: customContent, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置应用自定义内容
    ///
    /// 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口
    @inlinable @discardableResult
    public func setAppCustomContent(customContent: [AppCustomContent], sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetAppCustomContentResponse {
        try await self.setAppCustomContent(SetAppCustomContentRequest(customContent: customContent, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
