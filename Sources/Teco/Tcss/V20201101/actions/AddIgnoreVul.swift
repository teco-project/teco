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

extension Tcss {
    /// AddIgnoreVul请求参数结构体
    public struct AddIgnoreVulRequest: TCRequestModel {
        /// 漏洞PocID信息列表
        public let list: [ModifyIgnoreVul]

        public init(list: [ModifyIgnoreVul]) {
            self.list = list
        }

        enum CodingKeys: String, CodingKey {
            case list = "List"
        }
    }

    /// AddIgnoreVul返回参数结构体
    public struct AddIgnoreVulResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增漏洞扫描忽略漏洞
    @inlinable @discardableResult
    public func addIgnoreVul(_ input: AddIgnoreVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddIgnoreVulResponse> {
        self.client.execute(action: "AddIgnoreVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增漏洞扫描忽略漏洞
    @inlinable @discardableResult
    public func addIgnoreVul(_ input: AddIgnoreVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddIgnoreVulResponse {
        try await self.client.execute(action: "AddIgnoreVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增漏洞扫描忽略漏洞
    @inlinable @discardableResult
    public func addIgnoreVul(list: [ModifyIgnoreVul], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddIgnoreVulResponse> {
        self.addIgnoreVul(AddIgnoreVulRequest(list: list), region: region, logger: logger, on: eventLoop)
    }

    /// 新增漏洞扫描忽略漏洞
    @inlinable @discardableResult
    public func addIgnoreVul(list: [ModifyIgnoreVul], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddIgnoreVulResponse {
        try await self.addIgnoreVul(AddIgnoreVulRequest(list: list), region: region, logger: logger, on: eventLoop)
    }
}
