//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DeleteLiveCallbackRule请求参数结构体
    public struct DeleteLiveCallbackRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String

        /// 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        public let appName: String

        public init(domainName: String, appName: String) {
            self.domainName = domainName
            self.appName = appName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case appName = "AppName"
        }
    }

    /// DeleteLiveCallbackRule返回参数结构体
    public struct DeleteLiveCallbackRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除回调规则
    ///
    /// 删除回调规则。
    @inlinable
    public func deleteLiveCallbackRule(_ input: DeleteLiveCallbackRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveCallbackRuleResponse > {
        self.client.execute(action: "DeleteLiveCallbackRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除回调规则
    ///
    /// 删除回调规则。
    @inlinable
    public func deleteLiveCallbackRule(_ input: DeleteLiveCallbackRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveCallbackRuleResponse {
        try await self.client.execute(action: "DeleteLiveCallbackRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除回调规则
    ///
    /// 删除回调规则。
    @inlinable
    public func deleteLiveCallbackRule(domainName: String, appName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveCallbackRuleResponse > {
        self.deleteLiveCallbackRule(DeleteLiveCallbackRuleRequest(domainName: domainName, appName: appName), logger: logger, on: eventLoop)
    }

    /// 删除回调规则
    ///
    /// 删除回调规则。
    @inlinable
    public func deleteLiveCallbackRule(domainName: String, appName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveCallbackRuleResponse {
        try await self.deleteLiveCallbackRule(DeleteLiveCallbackRuleRequest(domainName: domainName, appName: appName), logger: logger, on: eventLoop)
    }
}
