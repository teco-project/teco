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

import NIOCore
import TecoCore

/// 数字身份管控平台（员工版） (eiam)
///
/// 数字身份管控平台（员工版）（Identity and Access Management B2E Version，以下简称 EIAM） Rest API 是为IDAM产品的合作方开发者接入并访问产品中用户管理管理、权限管理与信任规则等提供的一组工具，是访问数字身份管控平台 SaaS 服务的入口。合作伙伴可以通过数字身份管控平台 API 进行二次开发，例如新建用户，关联用户与账号，授予应用访问权限等。
///
/// |术语 |全称 |中文 |说明 |
/// | ------ | ------ | ------ |
/// | OrgNode |OrgNode|机构节点| EIAM产品下创建的机构。 |
/// | UserGroup |User Group| 用户组|EIAM产品下创建的用户组。
/// | User |User |用户|EIAM产品下创建的用户。
///
///
///
///
///
///
///
/// 	- Limit 和 Offset
/// >用来控制分页的参数：Limit 为单次返回的最多条目数量；Offset 为偏移量。当相应结果是列表形式时，如果数量超过了 Limit 所限定的值，那么只返回 Limit 个值。
/// 举例来说，参数 Offset=0&amp;Limit=20 返回第 0 到 19 项，Offset=20&amp;Limit=20 返回第 20 到 39 项，Offset=40&amp;Limit=20 返回第 40 到 59 项；以此类推。
///
/// 	- Ids.N
/// >同时输入多个参数的格式。当遇到形如这样的格式时，那么该输入参数可以同时传多个。例如：
/// GET 请求或者 POST x-www-form-urlencoded 请求：Ids.0=example-8e5c15b6&amp;Ids.1=example-709dd13f&amp;Ids.2=example-ead6be46
/// 以此类推（以下标 0 开始）。
/// POST json 请求：{"Ids": ["example-8e5c15b6", "example-709dd13f", "example-ead6be46"]}
public struct Eiam: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Eiam`` client.
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to perform actions.
    ///    - region: Default region of the service to operate on.
    ///    - language: Preferred language for API response.
    ///    - endpoint: Endpoint provider for API request.
    ///    - timeout: Timeout value for HTTP requests.
    ///    - byteBufferAllocator: Byte buffer allocator used throughout ``Eiam``.
    public init(
        client: TCClient,
        region: TCRegion? = nil,
        language: TCServiceConfig.Language? = nil,
        endpoint: TCServiceConfig.Endpoint = .global,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator()
    ) {
        self.client = client
        self.config = TCServiceConfig(
            service: "eiam",
            version: "2021-04-20",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCEiamError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Eiam {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
