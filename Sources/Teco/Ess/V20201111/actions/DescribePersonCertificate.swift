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

import Logging
import NIOCore
import TecoCore

extension Ess {
    /// DescribePersonCertificate请求参数结构体
    public struct DescribePersonCertificateRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 个人用户的三要素信息：
        ///
        /// - 姓名
        /// - 证件号
        /// - 证件类型
        public let userInfo: UserThreeFactor

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 证书使用场景，可以选择的场景值如下:
        ///
        /// - **E_PRESCRIPTION_AUTO_SIGN** : 电子处方场景
        /// 注: `现在仅支持电子处方场景`
        public let sceneKey: String?

        public init(operator: UserInfo, userInfo: UserThreeFactor, agent: Agent? = nil, sceneKey: String? = nil) {
            self.operator = `operator`
            self.userInfo = userInfo
            self.agent = agent
            self.sceneKey = sceneKey
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case userInfo = "UserInfo"
            case agent = "Agent"
            case sceneKey = "SceneKey"
        }
    }

    /// DescribePersonCertificate返回参数结构体
    public struct DescribePersonCertificateResponse: TCResponse {
        /// 证书的Base64
        public let cert: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cert = "Cert"
            case requestId = "RequestId"
        }
    }

    /// 查询个人证书接口
    ///
    /// 此接口（DescribePersonCertificate）用于查询个人数字证书信息。
    ///
    /// 注：`1.目前仅用于查询开通了医疗自动签署功能的个人数字证书。`
    ///
    /// `2.调用此接口需要开通白名单，使用前请联系相关人员开通白名单。`
    @inlinable
    public func describePersonCertificate(_ input: DescribePersonCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonCertificateResponse> {
        self.client.execute(action: "DescribePersonCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询个人证书接口
    ///
    /// 此接口（DescribePersonCertificate）用于查询个人数字证书信息。
    ///
    /// 注：`1.目前仅用于查询开通了医疗自动签署功能的个人数字证书。`
    ///
    /// `2.调用此接口需要开通白名单，使用前请联系相关人员开通白名单。`
    @inlinable
    public func describePersonCertificate(_ input: DescribePersonCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonCertificateResponse {
        try await self.client.execute(action: "DescribePersonCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询个人证书接口
    ///
    /// 此接口（DescribePersonCertificate）用于查询个人数字证书信息。
    ///
    /// 注：`1.目前仅用于查询开通了医疗自动签署功能的个人数字证书。`
    ///
    /// `2.调用此接口需要开通白名单，使用前请联系相关人员开通白名单。`
    @inlinable
    public func describePersonCertificate(operator: UserInfo, userInfo: UserThreeFactor, agent: Agent? = nil, sceneKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonCertificateResponse> {
        self.describePersonCertificate(.init(operator: `operator`, userInfo: userInfo, agent: agent, sceneKey: sceneKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询个人证书接口
    ///
    /// 此接口（DescribePersonCertificate）用于查询个人数字证书信息。
    ///
    /// 注：`1.目前仅用于查询开通了医疗自动签署功能的个人数字证书。`
    ///
    /// `2.调用此接口需要开通白名单，使用前请联系相关人员开通白名单。`
    @inlinable
    public func describePersonCertificate(operator: UserInfo, userInfo: UserThreeFactor, agent: Agent? = nil, sceneKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonCertificateResponse {
        try await self.describePersonCertificate(.init(operator: `operator`, userInfo: userInfo, agent: agent, sceneKey: sceneKey), region: region, logger: logger, on: eventLoop)
    }
}
