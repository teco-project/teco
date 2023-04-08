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

extension Cme {
    /// DescribeResourceAuthorization请求参数结构体
    public struct DescribeResourceAuthorizationRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 归属者。
        public let owner: Entity?

        /// 资源。
        public let resource: Resource?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以查询任意资源的被授权情况。如果指定操作者，则操作者必须对被授权资源有读权限。
        public let `operator`: String?

        public init(platform: String, owner: Entity? = nil, resource: Resource? = nil, operator: String? = nil) {
            self.platform = platform
            self.owner = owner
            self.resource = resource
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case owner = "Owner"
            case resource = "Resource"
            case `operator` = "Operator"
        }
    }

    /// DescribeResourceAuthorization返回参数结构体
    public struct DescribeResourceAuthorizationResponse: TCResponseModel {
        /// 符合条件的资源授权记录总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 授权信息列表。
        public let authorizationInfoSet: [AuthorizationInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case authorizationInfoSet = "AuthorizationInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取资源授权列表
    ///
    /// 查询资源被授权的情况。
    @inlinable
    public func describeResourceAuthorization(_ input: DescribeResourceAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceAuthorizationResponse> {
        self.client.execute(action: "DescribeResourceAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源授权列表
    ///
    /// 查询资源被授权的情况。
    @inlinable
    public func describeResourceAuthorization(_ input: DescribeResourceAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceAuthorizationResponse {
        try await self.client.execute(action: "DescribeResourceAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源授权列表
    ///
    /// 查询资源被授权的情况。
    @inlinable
    public func describeResourceAuthorization(platform: String, owner: Entity? = nil, resource: Resource? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceAuthorizationResponse> {
        self.describeResourceAuthorization(.init(platform: platform, owner: owner, resource: resource, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源授权列表
    ///
    /// 查询资源被授权的情况。
    @inlinable
    public func describeResourceAuthorization(platform: String, owner: Entity? = nil, resource: Resource? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceAuthorizationResponse {
        try await self.describeResourceAuthorization(.init(platform: platform, owner: owner, resource: resource, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
