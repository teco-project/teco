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

extension Cwp {
    /// ModifyBaselinePolicy请求参数结构体
    public struct ModifyBaselinePolicyRequest: TCRequestModel {
        /// 无
        public let data: BaselinePolicy

        /// <li>RuleName - String - 是否必填：否 - 规则名称</li>
        /// <li>CategoryId - int64 - 是否必填：否 自定义筛选为-1 - 规则分类</li>
        /// <li>RuleType - int - 是否必填：否 0:系统 1:自定义 - 规则类型</li>
        public let filters: [Filter]?

        /// 是否按照过滤的全选
        public let selectAll: Int64?

        public init(data: BaselinePolicy, filters: [Filter]? = nil, selectAll: Int64? = nil) {
            self.data = data
            self.filters = filters
            self.selectAll = selectAll
        }

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case filters = "Filters"
            case selectAll = "SelectAll"
        }
    }

    /// ModifyBaselinePolicy返回参数结构体
    public struct ModifyBaselinePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更改基线策略设置
    @inlinable @discardableResult
    public func modifyBaselinePolicy(_ input: ModifyBaselinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselinePolicyResponse> {
        self.client.execute(action: "ModifyBaselinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更改基线策略设置
    @inlinable @discardableResult
    public func modifyBaselinePolicy(_ input: ModifyBaselinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselinePolicyResponse {
        try await self.client.execute(action: "ModifyBaselinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更改基线策略设置
    @inlinable @discardableResult
    public func modifyBaselinePolicy(data: BaselinePolicy, filters: [Filter]? = nil, selectAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselinePolicyResponse> {
        let input = ModifyBaselinePolicyRequest(data: data, filters: filters, selectAll: selectAll)
        return self.client.execute(action: "ModifyBaselinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更改基线策略设置
    @inlinable @discardableResult
    public func modifyBaselinePolicy(data: BaselinePolicy, filters: [Filter]? = nil, selectAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselinePolicyResponse {
        let input = ModifyBaselinePolicyRequest(data: data, filters: filters, selectAll: selectAll)
        return try await self.client.execute(action: "ModifyBaselinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
