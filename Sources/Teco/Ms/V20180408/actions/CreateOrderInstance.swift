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

extension Ms {
    /// CreateOrderInstance请求参数结构体
    public struct CreateOrderInstanceRequest: TCRequestModel {
        /// 平台类型枚举值：1-android加固  ；2-ios源码混淆 ； 3-sdk加固 ； 4-applet小程序加固
        public let platformType: Int64

        /// 订单采购类型 1-免费试用 ；2-按年收费 ；3-按次收费
        public let orderType: Int64

        /// 代表应用包名列表，值为单个包名（例如：“a.b.xxx”）或多个包名用逗号隔开(例如：“a.b.xxx,b.c.xxx”)。
        /// 当android按年收费加固或android免费试用加固时，该字段要求非空，即PlatformType=1 并且 OrderType=2时，AppPkgNameList必传值。
        public let appPkgNameList: String?

        public init(platformType: Int64, orderType: Int64, appPkgNameList: String? = nil) {
            self.platformType = platformType
            self.orderType = orderType
            self.appPkgNameList = appPkgNameList
        }

        enum CodingKeys: String, CodingKey {
            case platformType = "PlatformType"
            case orderType = "OrderType"
            case appPkgNameList = "AppPkgNameList"
        }
    }

    /// CreateOrderInstance返回参数结构体
    public struct CreateOrderInstanceResponse: TCResponseModel {
        /// 订单Id
        public let orderId: String

        /// 与订单关联的资源id
        public let resourceId: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case resourceId = "ResourceId"
            case requestId = "RequestId"
        }
    }

    /// 创建渠道合作应用加固订单
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。
    /// 订单类型有：免费试用、按年收费、按次收费。
    /// 应用加固支持的平台类型有：android加固 、ios源码混淆 、sdk加固、applet小程序加固。
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func createOrderInstance(_ input: CreateOrderInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrderInstanceResponse> {
        fatalError("CreateOrderInstance is no longer available.")
    }

    /// 创建渠道合作应用加固订单
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。
    /// 订单类型有：免费试用、按年收费、按次收费。
    /// 应用加固支持的平台类型有：android加固 、ios源码混淆 、sdk加固、applet小程序加固。
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func createOrderInstance(_ input: CreateOrderInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderInstanceResponse {
        fatalError("CreateOrderInstance is no longer available.")
    }

    /// 创建渠道合作应用加固订单
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。
    /// 订单类型有：免费试用、按年收费、按次收费。
    /// 应用加固支持的平台类型有：android加固 、ios源码混淆 、sdk加固、applet小程序加固。
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func createOrderInstance(platformType: Int64, orderType: Int64, appPkgNameList: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrderInstanceResponse> {
        fatalError("CreateOrderInstance is no longer available.")
    }

    /// 创建渠道合作应用加固订单
    ///
    /// 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。
    /// 订单类型有：免费试用、按年收费、按次收费。
    /// 应用加固支持的平台类型有：android加固 、ios源码混淆 、sdk加固、applet小程序加固。
    @available(*, unavailable, message: "上错服务器了")
    @inlinable
    public func createOrderInstance(platformType: Int64, orderType: Int64, appPkgNameList: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderInstanceResponse {
        fatalError("CreateOrderInstance is no longer available.")
    }
}