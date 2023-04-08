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

extension Sts {
    /// AssumeRole请求参数结构体
    public struct AssumeRoleRequest: TCRequestModel {
        /// 角色的资源描述，可在[访问管理](https://console.cloud.tencent.com/cam/role)，点击角色名获取。
        /// 普通角色：
        /// qcs::cam::uin/12345678:role/4611686018427397919、qcs::cam::uin/12345678:roleName/testRoleName
        /// 服务角色：
        /// qcs::cam::uin/12345678:role/tencentcloudServiceRole/4611686018427397920、qcs::cam::uin/12345678:role/tencentcloudServiceRoleName/testServiceRoleName
        public let roleArn: String

        /// 临时会话名称，由用户自定义名称。
        /// 长度在2到128之间，可包含大小写字符，数字以及特殊字符：=,.@_-。 正则为：[\w+=,.@_-]*
        public let roleSessionName: String

        /// 指定临时证书的有效期，单位：秒，默认 7200 秒，最长可设定有效期为 43200 秒
        public let durationSeconds: UInt64?

        /// 策略描述
        /// 注意：
        /// 1、policy 需要做 urlencode（如果通过 GET 方法请求云 API，发送请求前，所有参数都需要按照[云 API 规范](https://cloud.tencent.com/document/api/598/33159#1.-.E6.8B.BC.E6.8E.A5.E8.A7.84.E8.8C.83.E8.AF.B7.E6.B1.82.E4.B8.B2)再 urlencode 一次）。
        /// 2、策略语法参照[ CAM 策略语法](https://cloud.tencent.com/document/product/598/10603)。
        /// 3、策略中不能包含 principal 元素。
        public let policy: String?

        /// 角色外部ID，可在[访问管理](https://console.cloud.tencent.com/cam/role)，点击角色名获取。
        /// 长度在2到128之间，可包含大小写字符，数字以及特殊字符：=,.@:/-。 正则为：[\w+=,.@:\/-]*
        public let externalId: String?

        /// 会话标签列表。最多可以传递 50 个会话标签，不支持包含相同标签键。
        public let tags: [Tag]?

        /// 调用者身份uin
        public let sourceIdentity: String?

        public init(roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil, policy: String? = nil, externalId: String? = nil, tags: [Tag]? = nil, sourceIdentity: String? = nil) {
            self.roleArn = roleArn
            self.roleSessionName = roleSessionName
            self.durationSeconds = durationSeconds
            self.policy = policy
            self.externalId = externalId
            self.tags = tags
            self.sourceIdentity = sourceIdentity
        }

        enum CodingKeys: String, CodingKey {
            case roleArn = "RoleArn"
            case roleSessionName = "RoleSessionName"
            case durationSeconds = "DurationSeconds"
            case policy = "Policy"
            case externalId = "ExternalId"
            case tags = "Tags"
            case sourceIdentity = "SourceIdentity"
        }
    }

    /// AssumeRole返回参数结构体
    public struct AssumeRoleResponse: TCResponseModel {
        /// 临时安全证书
        public let credentials: Credentials

        /// 证书无效的时间，返回 Unix 时间戳，精确到秒
        public let expiredTime: Int64

        /// 证书无效的时间，以 iso8601 格式的 UTC 时间表示
        public let expiration: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case credentials = "Credentials"
            case expiredTime = "ExpiredTime"
            case expiration = "Expiration"
            case requestId = "RequestId"
        }
    }

    /// 申请扮演角色
    @inlinable
    public func assumeRole(_ input: AssumeRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleResponse> {
        self.client.execute(action: "AssumeRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请扮演角色
    @inlinable
    public func assumeRole(_ input: AssumeRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleResponse {
        try await self.client.execute(action: "AssumeRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请扮演角色
    @inlinable
    public func assumeRole(roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil, policy: String? = nil, externalId: String? = nil, tags: [Tag]? = nil, sourceIdentity: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssumeRoleResponse> {
        self.assumeRole(.init(roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds, policy: policy, externalId: externalId, tags: tags, sourceIdentity: sourceIdentity), region: region, logger: logger, on: eventLoop)
    }

    /// 申请扮演角色
    @inlinable
    public func assumeRole(roleArn: String, roleSessionName: String, durationSeconds: UInt64? = nil, policy: String? = nil, externalId: String? = nil, tags: [Tag]? = nil, sourceIdentity: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssumeRoleResponse {
        try await self.assumeRole(.init(roleArn: roleArn, roleSessionName: roleSessionName, durationSeconds: durationSeconds, policy: policy, externalId: externalId, tags: tags, sourceIdentity: sourceIdentity), region: region, logger: logger, on: eventLoop)
    }
}
