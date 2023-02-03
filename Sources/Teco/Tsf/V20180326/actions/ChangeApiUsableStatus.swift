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

extension Tsf {
    /// ChangeApiUsableStatus请求参数结构体
    public struct ChangeApiUsableStatusRequest: TCRequestModel {
        /// API ID
        public let apiId: String

        /// 切换状态，enabled/disabled
        public let usableStatus: String

        public init(apiId: String, usableStatus: String) {
            self.apiId = apiId
            self.usableStatus = usableStatus
        }

        enum CodingKeys: String, CodingKey {
            case apiId = "ApiId"
            case usableStatus = "UsableStatus"
        }
    }

    /// ChangeApiUsableStatus返回参数结构体
    public struct ChangeApiUsableStatusResponse: TCResponseModel {
        /// API 信息
        public let result: ApiDetailInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 启用或禁用API
    @inlinable
    public func changeApiUsableStatus(_ input: ChangeApiUsableStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeApiUsableStatusResponse> {
        self.client.execute(action: "ChangeApiUsableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用或禁用API
    @inlinable
    public func changeApiUsableStatus(_ input: ChangeApiUsableStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeApiUsableStatusResponse {
        try await self.client.execute(action: "ChangeApiUsableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用或禁用API
    @inlinable
    public func changeApiUsableStatus(apiId: String, usableStatus: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChangeApiUsableStatusResponse> {
        let input = ChangeApiUsableStatusRequest(apiId: apiId, usableStatus: usableStatus)
        return self.client.execute(action: "ChangeApiUsableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用或禁用API
    @inlinable
    public func changeApiUsableStatus(apiId: String, usableStatus: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChangeApiUsableStatusResponse {
        let input = ChangeApiUsableStatusRequest(apiId: apiId, usableStatus: usableStatus)
        return try await self.client.execute(action: "ChangeApiUsableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
