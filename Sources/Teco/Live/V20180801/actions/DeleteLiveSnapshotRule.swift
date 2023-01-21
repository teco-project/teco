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

extension Live {
    /// DeleteLiveSnapshotRule请求参数结构体
    public struct DeleteLiveSnapshotRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String

        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        public let appName: String?

        /// 流名称。
        public let streamName: String?

        public init(domainName: String, appName: String? = nil, streamName: String? = nil) {
            self.domainName = domainName
            self.appName = appName
            self.streamName = streamName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case appName = "AppName"
            case streamName = "StreamName"
        }
    }

    /// DeleteLiveSnapshotRule返回参数结构体
    public struct DeleteLiveSnapshotRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除截图规则
    ///
    /// 删除截图规则。
    @inlinable @discardableResult
    public func deleteLiveSnapshotRule(_ input: DeleteLiveSnapshotRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveSnapshotRuleResponse> {
        self.client.execute(action: "DeleteLiveSnapshotRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除截图规则
    ///
    /// 删除截图规则。
    @inlinable @discardableResult
    public func deleteLiveSnapshotRule(_ input: DeleteLiveSnapshotRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveSnapshotRuleResponse {
        try await self.client.execute(action: "DeleteLiveSnapshotRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除截图规则
    ///
    /// 删除截图规则。
    @inlinable @discardableResult
    public func deleteLiveSnapshotRule(domainName: String, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLiveSnapshotRuleResponse> {
        self.deleteLiveSnapshotRule(DeleteLiveSnapshotRuleRequest(domainName: domainName, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除截图规则
    ///
    /// 删除截图规则。
    @inlinable @discardableResult
    public func deleteLiveSnapshotRule(domainName: String, appName: String? = nil, streamName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveSnapshotRuleResponse {
        try await self.deleteLiveSnapshotRule(DeleteLiveSnapshotRuleRequest(domainName: domainName, appName: appName, streamName: streamName), region: region, logger: logger, on: eventLoop)
    }
}
