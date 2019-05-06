function varargout = Problema4(varargin)
    % PROBLEMA4 MATLAB code for Problema4.fig
    %      PROBLEMA4, by itself, creates a new PROBLEMA4 or raises the existing
    %      singleton*.
    %
    %      H = PROBLEMA4 returns the handle to a new PROBLEMA4 or the handle to
    %      the existing singleton*.
    %
    %      PROBLEMA4('CALLBACK',hObject,eventData,handles,...) calls the local
    %      function named CALLBACK in PROBLEMA4.M with the given input arguments.
    %
    %      PROBLEMA4('Property','Value',...) creates a new PROBLEMA4 or raises the
    %      existing singleton*.  Starting from the left, property value pairs are
    %      applied to the GUI before Problema4_OpeningFcn gets called.  An
    %      unrecognized property name or invalid value makes property application
    %      stop.  All inputs are passed to Problema4_OpeningFcn via varargin.
    %
    %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
    %      instance to run (singleton)".
    %
    % See also: GUIDE, GUIDATA, GUIHANDLES

    % Edit the above text to modify the response to help Problema4

    % Last Modified by GUIDE v2.5 05-May-2019 17:06:21

    % Begin initialization code - DO NOT EDIT
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @Problema4_OpeningFcn, ...
                       'gui_OutputFcn',  @Problema4_OutputFcn, ...
                       'gui_LayoutFcn',  [] , ...
                       'gui_Callback',   []);
    if nargin && ischar(varargin{1})
        gui_State.gui_Callback = str2func(varargin{1});
    end

    if nargout
        [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
    else
        gui_mainfcn(gui_State, varargin{:});
    end
    % End initialization code - DO NOT EDIT
end

% --- Executes just before Problema4 is made visible.
function Problema4_OpeningFcn(hObject, eventdata, handles, varargin)
    % This function has no output args, see OutputFcn.
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    % varargin   command line arguments to Problema4 (see VARARGIN)

    % Create the data to plot. 
%      handles.peaks=peaks(35); handles.membrane=membrane; [x,y] = meshgrid(-8:.5:8); r = sin(y) * cos(x) + eps; sinc = sin(r)./r; handles.sinc = sinc; 
%     % Set the current data value. 
%      handles.current_data = handles.peaks; surf(handles.current_data)
%      surf(x, y, r);

    % Choose default command line output for Problema4
    handles.output = hObject;

    % Update handles structure
    guidata(hObject, handles);

    % UIWAIT makes Problema4 wait for user response (see UIRESUME)
    % uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = Problema4_OutputFcn(hObject, eventdata, handles) 
    % varargout  cell array for returning output args (see VARARGOUT);
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Get default command line output from handles structure
    varargout{1} = handles.output;
end


function xSuperior_Callback(hObject, eventdata, handles)
    % hObject    handle to xSuperior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of xSuperior as text
    %        str2double(get(hObject,'String')) returns contents of xSuperior as a double
end 


% --- Executes during object creation, after setting all properties.
function xSuperior_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to xSuperior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end



function xInferior_Callback(hObject, eventdata, handles)
    % hObject    handle to xInferior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Hints: get(hObject,'String') returns contents of xInferior as text
    %        str2double(get(hObject,'String')) returns contents of xInferior as a double
end

% --- Executes during object creation, after setting all properties.
function xInferior_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to xInferior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end


function ySuperior_Callback(hObject, eventdata, handles)
    % hObject    handle to ySuperior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Hints: get(hObject,'String') returns contents of ySuperior as text
    %        str2double(get(hObject,'String')) returns contents of ySuperior as a double
end

% --- Executes during object creation, after setting all properties.
function ySuperior_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to ySuperior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end


function yInferior_Callback(hObject, eventdata, handles)
    % hObject    handle to yInferior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)

    % Hints: get(hObject,'String') returns contents of yInferior as text
    %        str2double(get(hObject,'String')) returns contents of yInferior as a double
end

% --- Executes during object creation, after setting all properties.
function yInferior_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to yInferior (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end


function timeInterval_Callback(hObject, eventdata, handles)
    % hObject    handle to timeInterval (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of timeInterval as text
    %        str2double(get(hObject,'String')) returns contents of timeInterval as a double
end

% --- Executes during object creation, after setting all properties.
function timeInterval_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to timeInterval (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end

function numPoints_Callback(hObject, eventdata, handles)
    % hObject    handle to numPoints (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of numPoints as text
    %        str2double(get(hObject,'String')) returns contents of numPoints as a double
end

% --- Executes during object creation, after setting all properties.
function numPoints_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to numPoints (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called

    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end

% --- Executes on button press in Graficar.
function Graficar_Callback(hObject, eventdata, handles)
    % hObject    handle to Graficar (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    xSuperior = str2double(get(handles.xSuperior,'String'));
    xInferior = str2double(get(handles.xInferior,'String'));
    ySuperior = str2double(get(handles.ySuperior,'String'));
    yInferior = str2double(get(handles.yInferior,'String'));
    timeInterval = str2double(get(handles.timeInterval,'String'));
    numPoints = str2double(get(handles.numPoints,'String'));

    x = xInferior:0.0005:xSuperior;
    
    a=0;
    b=0;
    
    for i=1:numPoints
        
        if (b == 0)
            a = a + 0.1;
            if (a >= 1)
                b = 1;
            end
        else 
            a = a - 0.1;
            if (a <= -pi)
                b = 0;
            end
        end
        
        y = (a+1)*sin(x);
        plot(x,y) 
        xlim([xInferior xSuperior]) 
        ylim([yInferior xSuperior])
        pause(timeInterval);
    end
end

% --- Executes on button press in Volver.
function Volver_Callback(hObject, eventdata, handles)
    % hObject    handle to Volver (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    Menu
    close(Problema4);
end
