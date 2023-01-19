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

extension Vod {
    /// PullEvents请求参数结构体
    public struct PullEventsRequest: TCRequestModel {
        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(extInfo: String? = nil, subAppId: UInt64? = nil) {
            self.extInfo = extInfo
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case extInfo = "ExtInfo"
            case subAppId = "SubAppId"
        }
    }

    /// PullEvents返回参数结构体
    public struct PullEventsResponse: TCResponseModel {
        /// 事件列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventSet: [EventContent]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventSet = "EventSet"
            case requestId = "RequestId"
        }
    }

    /// 拉取事件通知
    ///
    /// * 该接口用于业务服务器以 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 的方式获取事件通知；
    /// * 接口为长轮询模式，即：如果服务端存在未消费事件，则立即返回给请求方；如果服务端没有未消费事件，则后台会将请求挂起，直到有新的事件产生为止；
    /// * 请求最多挂起5秒，建议请求方将超时时间设置为10秒；
    /// * 未被拉取的事件通知最多保留4天，超过该时限的事件通知可能会被清除；
    /// * 若该接口有事件返回，调用方必须在<font color="red">30秒</font>内调用 [确认事件通知](https://cloud.tencent.com/document/product/266/33434) 接口，确认事件通知已经处理，否则该事件通知在<font color="red">30秒</font>后会再次被拉取到。
    /// * 当前，API 每次最多可以获取16个事件通知。
    @inlinable
    public func pullEvents(_ input: PullEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullEventsResponse> {
        self.client.execute(action: "PullEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取事件通知
    ///
    /// * 该接口用于业务服务器以 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 的方式获取事件通知；
    /// * 接口为长轮询模式，即：如果服务端存在未消费事件，则立即返回给请求方；如果服务端没有未消费事件，则后台会将请求挂起，直到有新的事件产生为止；
    /// * 请求最多挂起5秒，建议请求方将超时时间设置为10秒；
    /// * 未被拉取的事件通知最多保留4天，超过该时限的事件通知可能会被清除；
    /// * 若该接口有事件返回，调用方必须在<font color="red">30秒</font>内调用 [确认事件通知](https://cloud.tencent.com/document/product/266/33434) 接口，确认事件通知已经处理，否则该事件通知在<font color="red">30秒</font>后会再次被拉取到。
    /// * 当前，API 每次最多可以获取16个事件通知。
    @inlinable
    public func pullEvents(_ input: PullEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullEventsResponse {
        try await self.client.execute(action: "PullEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取事件通知
    ///
    /// * 该接口用于业务服务器以 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 的方式获取事件通知；
    /// * 接口为长轮询模式，即：如果服务端存在未消费事件，则立即返回给请求方；如果服务端没有未消费事件，则后台会将请求挂起，直到有新的事件产生为止；
    /// * 请求最多挂起5秒，建议请求方将超时时间设置为10秒；
    /// * 未被拉取的事件通知最多保留4天，超过该时限的事件通知可能会被清除；
    /// * 若该接口有事件返回，调用方必须在<font color="red">30秒</font>内调用 [确认事件通知](https://cloud.tencent.com/document/product/266/33434) 接口，确认事件通知已经处理，否则该事件通知在<font color="red">30秒</font>后会再次被拉取到。
    /// * 当前，API 每次最多可以获取16个事件通知。
    @inlinable
    public func pullEvents(extInfo: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullEventsResponse> {
        self.pullEvents(PullEventsRequest(extInfo: extInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取事件通知
    ///
    /// * 该接口用于业务服务器以 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 的方式获取事件通知；
    /// * 接口为长轮询模式，即：如果服务端存在未消费事件，则立即返回给请求方；如果服务端没有未消费事件，则后台会将请求挂起，直到有新的事件产生为止；
    /// * 请求最多挂起5秒，建议请求方将超时时间设置为10秒；
    /// * 未被拉取的事件通知最多保留4天，超过该时限的事件通知可能会被清除；
    /// * 若该接口有事件返回，调用方必须在<font color="red">30秒</font>内调用 [确认事件通知](https://cloud.tencent.com/document/product/266/33434) 接口，确认事件通知已经处理，否则该事件通知在<font color="red">30秒</font>后会再次被拉取到。
    /// * 当前，API 每次最多可以获取16个事件通知。
    @inlinable
    public func pullEvents(extInfo: String? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullEventsResponse {
        try await self.pullEvents(PullEventsRequest(extInfo: extInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
