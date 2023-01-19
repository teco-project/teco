//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// CreateNewL7RulesUpload请求参数结构体
    public struct CreateNewL7RulesUploadRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP）
        public let business: String

        /// 资源ID列表
        public let idList: [String]

        /// 资源IP列表
        public let vipList: [String]

        /// 规则列表
        public let rules: [L7RuleEntry]

        public init(business: String, idList: [String], vipList: [String], rules: [L7RuleEntry]) {
            self.business = business
            self.idList = idList
            self.vipList = vipList
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case idList = "IdList"
            case vipList = "VipList"
            case rules = "Rules"
        }
    }

    /// CreateNewL7RulesUpload返回参数结构体
    public struct CreateNewL7RulesUploadResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 批量上传7层转发规则
    @inlinable
    public func createNewL7RulesUpload(_ input: CreateNewL7RulesUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNewL7RulesUploadResponse> {
        self.client.execute(action: "CreateNewL7RulesUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量上传7层转发规则
    @inlinable
    public func createNewL7RulesUpload(_ input: CreateNewL7RulesUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNewL7RulesUploadResponse {
        try await self.client.execute(action: "CreateNewL7RulesUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量上传7层转发规则
    @inlinable
    public func createNewL7RulesUpload(business: String, idList: [String], vipList: [String], rules: [L7RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNewL7RulesUploadResponse> {
        self.createNewL7RulesUpload(CreateNewL7RulesUploadRequest(business: business, idList: idList, vipList: vipList, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 批量上传7层转发规则
    @inlinable
    public func createNewL7RulesUpload(business: String, idList: [String], vipList: [String], rules: [L7RuleEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNewL7RulesUploadResponse {
        try await self.createNewL7RulesUpload(CreateNewL7RulesUploadRequest(business: business, idList: idList, vipList: vipList, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
