import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'streaming_on_movies_model.dart';
export 'streaming_on_movies_model.dart';

class StreamingOnMoviesWidget extends StatefulWidget {
  const StreamingOnMoviesWidget({
    super.key,
    this.id,
  });

  final int? id;

  @override
  State<StreamingOnMoviesWidget> createState() =>
      _StreamingOnMoviesWidgetState();
}

class _StreamingOnMoviesWidgetState extends State<StreamingOnMoviesWidget> {
  late StreamingOnMoviesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StreamingOnMoviesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 0.0, 0.0),
        child: FutureBuilder<ApiCallResponse>(
          future: SearchProvidersIDMoviesCall.call(
            movieId: widget.id,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            final columnSearchProvidersIDMoviesResponse = snapshot.data!;

            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328.3,
                  height: 38.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 35.0, 0.0),
                        child: Text(
                          'Streaming On',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'STREAMING_ON_MOVIES_Container_k9s1qler_O');
                            logFirebaseEvent('Container_bottom_sheet');
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 53.4,
                            height: 53.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (GetProvidersTVStruct.maybeFromMap(
                            columnSearchProvidersIDMoviesResponse.jsonBody)
                        ?.results
                        .us
                        .free
                        .length !=
                    0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 330.4,
                      height: 114.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Watch Free',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final stream = GetProvidersTVStruct.maybeFromMap(
                                            columnSearchProvidersIDMoviesResponse
                                                .jsonBody)
                                        ?.results
                                        .us
                                        .free
                                        .toList() ??
                                    [];

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(stream.length,
                                        (streamIndex) {
                                      final streamItem = stream[streamIndex];
                                      return Visibility(
                                        visible: streamItem.logoPath != '',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'STREAMING_ON_MOVIES_Container_oqj7rxcj_O');
                                            logFirebaseEvent(
                                                'Container_launch_u_r_l');
                                            await launchURL(GetProvidersTVStruct
                                                    .maybeFromMap(
                                                        columnSearchProvidersIDMoviesResponse
                                                            .jsonBody)!
                                                .results
                                                .us
                                                .link);
                                          },
                                          child: Container(
                                            width: 75.0,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                functions.urlConcatinator(
                                                    streamItem.logoPath)!,
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }).divide(
                                      SizedBox(width: 5.0),
                                      filterFn: (streamIndex) {
                                        final streamItem = stream[streamIndex];
                                        return streamItem.logoPath != '';
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (GetProvidersTVStruct.maybeFromMap(
                            columnSearchProvidersIDMoviesResponse.jsonBody)
                        ?.results
                        .us
                        .flatrate
                        .length !=
                    0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 330.4,
                      height: 114.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Stream',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final stream = GetProvidersTVStruct.maybeFromMap(
                                            columnSearchProvidersIDMoviesResponse
                                                .jsonBody)
                                        ?.results
                                        .us
                                        .flatrate
                                        .toList() ??
                                    [];

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(stream.length,
                                        (streamIndex) {
                                      final streamItem = stream[streamIndex];
                                      return Visibility(
                                        visible: streamItem.logoPath != '',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'STREAMING_ON_MOVIES_Container_a7vnrc2w_O');
                                            logFirebaseEvent(
                                                'Container_launch_u_r_l');
                                            await launchURL(GetProvidersTVStruct
                                                    .maybeFromMap(
                                                        columnSearchProvidersIDMoviesResponse
                                                            .jsonBody)!
                                                .results
                                                .us
                                                .link);
                                          },
                                          child: Container(
                                            width: 75.0,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                functions.urlConcatinator(
                                                    streamItem.logoPath)!,
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }).divide(
                                      SizedBox(width: 5.0),
                                      filterFn: (streamIndex) {
                                        final streamItem = stream[streamIndex];
                                        return streamItem.logoPath != '';
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (GetProvidersTVStruct.maybeFromMap(
                            columnSearchProvidersIDMoviesResponse.jsonBody)
                        ?.results
                        .us
                        .buy
                        .length !=
                    0)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 330.4,
                      height: 114.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Buy',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final stream = GetProvidersTVStruct.maybeFromMap(
                                            columnSearchProvidersIDMoviesResponse
                                                .jsonBody)
                                        ?.results
                                        .us
                                        .buy
                                        .toList() ??
                                    [];

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(stream.length,
                                        (streamIndex) {
                                      final streamItem = stream[streamIndex];
                                      return Visibility(
                                        visible: streamItem.logoPath != '',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'STREAMING_ON_MOVIES_Container_mjn4wx19_O');
                                            logFirebaseEvent(
                                                'Container_launch_u_r_l');
                                            await launchURL(GetProvidersTVStruct
                                                    .maybeFromMap(
                                                        columnSearchProvidersIDMoviesResponse
                                                            .jsonBody)!
                                                .results
                                                .us
                                                .link);
                                          },
                                          child: Container(
                                            width: 75.0,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                functions.urlConcatinator(
                                                    streamItem.logoPath)!,
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }).divide(
                                      SizedBox(width: 5.0),
                                      filterFn: (streamIndex) {
                                        final streamItem = stream[streamIndex];
                                        return streamItem.logoPath != '';
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if ((GetProvidersTVStruct.maybeFromMap(
                                columnSearchProvidersIDMoviesResponse.jsonBody)
                            ?.results
                            .us
                            .free
                            .length ==
                        0) &&
                    (GetProvidersTVStruct.maybeFromMap(
                                columnSearchProvidersIDMoviesResponse.jsonBody)
                            ?.results
                            .us
                            .buy
                            .length ==
                        0) &&
                    (GetProvidersTVStruct.maybeFromMap(
                                columnSearchProvidersIDMoviesResponse.jsonBody)
                            ?.results
                            .us
                            .flatrate
                            .length ==
                        0))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'This movie is not available on streaming right now.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.black,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
